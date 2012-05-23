require 'rubygems'
require 'spork'

Spork.prefork do
  require 'cucumber/rails'
  require 'factory_girl/step_definitions'

  Capybara.default_selector = :css

  ActionController::Base.allow_rescue = false

  begin
    DatabaseCleaner.strategy = :transaction
  rescue NameError
    raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
  end

  Cucumber::Rails::Database.javascript_strategy = :truncation
  World FactoryGirl::Syntax::Methods

  VCR.configure do |c|
    c.cassette_library_dir = 'features/vcr_cassettes'
    c.hook_into :fakeweb
    c.allow_http_connections_when_no_cassette = true
  end

  VCR.cucumber_tags do |t|
    t.tag '@imdb'
  end
end

Spork.each_run do

end


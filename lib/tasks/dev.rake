namespace :app do
  namespace :dev do
    task :prime => :environment do
      puts "Setting up development data"

      Rake::Task['db:migrate']

      require 'database_cleaner'

      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.clean

      require 'factory_girl_rails'

      Rake::Task['db:seed'].execute

      FactoryGirl.create(:item, :name => "Ruby 1.9 Pickaxe")
      FactoryGirl.create(:item, :name => "VIM Screencast")
      FactoryGirl.create(:item, :name => "tmux Video")
      FactoryGirl.create(:item, :name => "The rspec book")

      puts "Development enviroment seeded with data"

    end
  end
end

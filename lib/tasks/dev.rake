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
      ["Iron Man", "The Avengers", "X-Men", "Batman", "Great Escape"].each do |name|
        movie = Factory.create(:movie, name: name, description: "Great movie")
        Factory.create(:movie_recommendation, movie: movie, vote_count: 10)
      end

      puts "Development enviroment seeded with data"

    end
  end
end

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movie_recommendation do
    movie
    recommending_user_id nil
  end
end

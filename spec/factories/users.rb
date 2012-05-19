FactoryGirl.define do
  sequence(:email) {|n| "person#{n}@example.com" }
  factory :user do
    email
    password "testtest"
    password_confirmation "testtest"
  end
end

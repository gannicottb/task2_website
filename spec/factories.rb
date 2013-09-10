#From Michael Hartl's Ruby on Rails Tutorial
FactoryGirl.define do
  factory :user do
    name     "Brandon Gannicott"
    email    "brandon@example.com"
    password "awolfoobar"
    password_confirmation "awolfoobar"
    #other variables?
  end
end
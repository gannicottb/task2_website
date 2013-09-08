#From Michael Hartl's Ruby on Rails Tutorial
FactoryGirl.define do
  factory :user do
    name     "Brandon Gannicott"
    email    "brandon@example.com"
    password "foobar"
    password_confirmation "foobar"
    #other variables?
  end
end
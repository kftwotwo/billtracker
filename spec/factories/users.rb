require 'factory_girl'

FactoryGirl.define do
  factory :user do
    email "test2@tes.com"
    password "12345678"
    password_confirmation "12345678"
  end
end

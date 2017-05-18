require 'factory_girl'

FactoryGirl.define do
  factory :account do
    account_name 'Kevins Checking'
    account_number '12345678'
    kind "Checking"
  end
end

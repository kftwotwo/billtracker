class Company < ApplicationRecord
  belongs_to :user
  has_many :bills
  has_many :notes
end

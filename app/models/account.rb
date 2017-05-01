class Account < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :bills
  has_many :credit_cards
end

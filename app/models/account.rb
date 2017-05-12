class Account < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_many :bills
  has_many :credit_cards
  has_many :transactions
  has_many :debit_cards
  has_many :loans
end

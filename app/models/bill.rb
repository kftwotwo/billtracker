class Bill < ApplicationRecord
  belongs_to :company
  belongs_to :user
  belongs_to :account
  belongs_to :credit_card
  belongs_to :debit_card

  has_one :frequency
  has_one :category
  has_many :notes
  has_many :transactions
end

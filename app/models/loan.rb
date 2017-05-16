class Loan < ApplicationRecord
  has_many :notes
  has_many :bills
  has_many :transactions
  has_many :notes, as: :notable

  belongs_to :user
  belongs_to :company
  belongs_to :account
end

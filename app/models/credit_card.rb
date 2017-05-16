class CreditCard < ApplicationRecord
  belongs_to :user
  belongs_to :account
  belongs_to :company
  has_many :notes, as: :notable
  has_many :transactions
  has_one :frequency
  has_many :bills

  validates :name_on_card, presence: true
  validates :card_number, presence: true, credit_card_number: true
  validates :expiration_date_month, presence: true
  validates :expiration_date_year, presence: true
  validates :amount, presence: true
end

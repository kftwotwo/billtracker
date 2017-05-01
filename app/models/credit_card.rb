class CreditCard < ApplicationRecord
  belongs_to :user
  belongs_to :account
  belongs_to :company
  has_one :note

  validates :name_on_card, presence: true
  validates :expiration_date_month, presence: true
  validates :expiration_date_year, presence: true
  validates :cvv, presence: true
  validates :amount, presence: true
end

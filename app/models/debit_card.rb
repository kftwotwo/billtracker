class DebitCard < ApplicationRecord
  has_one :note
  belongs_to :user
  belongs_to :account
  belongs_to :company

  validates :name_on_card, presence: true
  validates :card_number, presence: true, credit_card_number: true
  validates :expiration_date_month, presence: true
  validates :expiration_date_year, presence: true
  validates :balance, presence: true
end

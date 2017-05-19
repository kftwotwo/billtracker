class Bill < ApplicationRecord
  belongs_to :company
  belongs_to :user
  belongs_to :account
  belongs_to :category

  has_one :frequency
  has_many :notes, as: :notable
  has_many :transactions
end

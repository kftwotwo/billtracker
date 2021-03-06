class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :companies
  has_many :bills
  has_many :accounts
  has_many :credit_cards
  has_many :transactions
  has_many :debit_cards
  has_many :loans
end

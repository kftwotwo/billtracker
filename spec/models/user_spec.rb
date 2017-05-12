require 'rails_helper'

describe User do
  it { should have_many :companies }
  it { should have_many :bills }
  it { should have_many :accounts }
  it { should have_many :transactions }
  it { should have_many :credit_cards }
  it { should have_many :debit_cards }
  it{ should have_many :loans }
end

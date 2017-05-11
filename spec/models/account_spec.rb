require 'rails_helper'

describe Account do
  it { should have_db_column :user_id }
  it { should have_db_column :company_id }
  it { should have_db_column :account_number }
  it { should have_db_column :kind }

  it { should belong_to :user }
  it { should belong_to :company }
  it { should have_many :bills }
  it { should have_many :transactions }
  it { should have_many :credit_cards }
  it { should have_many :debit_cards }
end

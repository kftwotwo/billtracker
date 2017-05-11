require 'rails_helper'

describe CreditCard do
  it { should have_db_column :user_id }
  it { should have_db_column :account_id }
  it { should have_db_column :company_id }
  it { should have_db_column :bill_id }
  it { should have_db_column :frequency_id }
  it { should have_db_column :name_on_card }
  it { should have_db_column :expiration_date_month }
  it { should have_db_column :expiration_date_year }
  it { should have_db_column :amount }
  it { should have_db_column :balance }

  it { should have_one :note }
  it { should belong_to :user }
  it { should belong_to :account }
  it { should belong_to :company }
  it { should have_many :transactions }
  it { should have_one :frequency }

  it { should validate_presence_of :name_on_card }
  it { should validate_presence_of :card_number }
  it { should validate_presence_of :expiration_date_month }
  it { should validate_presence_of :expiration_date_year }
  it { should validate_presence_of :amount }
end

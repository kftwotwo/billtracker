require 'rails_helper'

describe Bill do
  it { should have_db_column :user_id }
  it { should have_db_column :account_id }
  it { should have_db_column :credit_card_id }
  it { should have_db_column :debit_card_id }
  it { should have_db_column :name }
  it { should have_db_column :next_due_date }
  it { should have_db_column :amount }
  it { should have_db_column :account_number }
  it { should have_db_column :company_id }

  it { should belong_to :user }
  it { should belong_to :company }
  it { should belong_to :account }
  it { should belong_to :credit_card }
  it { should belong_to :debit_card }

  it { should have_one :frequency }
  it { should have_one :category }

  it { should have_many :notes }
  it { should have_many :transactions }
end

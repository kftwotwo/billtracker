require 'rails_helper'

describe Bill do
  it { should have_db_column :name }
  it { should have_db_column :next_due_date }
  it { should have_db_column :amount }
  it { should have_db_column :account_number }
  it { should have_db_column :company_id }
  it { should have_db_column :user_id }

  it { should belong_to :user }
  it { should belong_to :company }
  it { should have_one :frequency }
  it { should have_many :notes }
  it { should have_one :category }
end

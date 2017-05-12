require 'rails_helper'

describe Loan do
  it { should have_db_column :user_id }
  it { should have_db_column :company_id }
  it { should have_db_column :account_id }
  it { should have_db_column :interest }
  it { should have_db_column :amount }

  it { should belong_to :user }
  it { should belong_to :company }
  it { should belong_to :account }

  it { should have_many :transactions }
  it { should have_many :bills }
  it { should have_many :notes }
end

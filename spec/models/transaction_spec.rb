require 'rails_helper'

describe Transaction do
  it { should have_db_column :user_id }
  it { should have_db_column :account_id }
  it { should have_db_column :bill_id }
  it { should have_db_column :company_id }
  it { should have_db_column :amount }

  it { should belong_to :user }
  it { should belong_to :account }
  it { should belong_to :bill }
  it { should belong_to :company }
end

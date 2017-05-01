require 'rails_helper'

describe Note do
  it { should have_db_column :company_id }
  it { should have_db_column :bill_id }
  it { should have_db_column :credit_card_id }
  it { should have_db_column :entry }

  it { should belong_to :company }
  it { should belong_to :bill }
  it { should belong_to :credit_card }
end

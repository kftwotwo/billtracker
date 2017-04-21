require 'rails_helper'

describe Note do
  it { should have_db_column :company_id }
  it { should have_db_column :entry }
  it { should have_db_column :bill_id }

  it { should belong_to :company }
  it { should belong_to :bill }
end

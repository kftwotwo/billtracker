require 'rails_helper'

describe Note do
  it { should have_db_column :company_id }
  it { should have_db_column :entry }

  it {should belong_to :company}
end

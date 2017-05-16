require 'rails_helper'

describe Note do
  it { should have_db_column :entry }
  it { should have_db_column :notable_type }
  it { should have_db_column :notable_id }

  it { should belong_to :notable }
end

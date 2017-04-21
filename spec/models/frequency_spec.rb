require 'rails_helper'

describe Frequency do
  it { should have_db_column :bill_id }
  it { should have_db_column :weekly }
  it { should have_db_column :bi_weekly }
  it { should have_db_column :tri_weekly }
  it { should have_db_column :monthly }

  it { should belong_to :bill}
end

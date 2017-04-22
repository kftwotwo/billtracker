require 'rails_helper'

describe Company do
  it { should have_db_column :user_id }
  it { should have_db_column :name }
  it { should have_db_column :website }

  it { should belong_to :user}
  it { should have_many :bills }
  it { should have_many :notes }
  it { should have_many :accounts }
end

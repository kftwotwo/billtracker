require 'rails_helper'

describe Company do
  it { should have_db_column :user_id }
  it { should have_db_column :name }
  it { should have_db_column :website }

  it { should belong_to :user}
  it { should have_many :bills }
  it { should have_many :notes }
  it { should have_many :accounts }
  it { should have_many :transactions }
  it { should have_many :credit_cards }
  it { should have_many :debit_cards }
  it { should have_many :loans }
end

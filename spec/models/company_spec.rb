require 'rails_helper'

describe Company do
  it { should have_db_column :user_id }

  it { should belong_to :user}
end

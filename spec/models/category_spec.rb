require 'rails_helper'

describe Category do
  it{ should have_db_column :kind }

  it{ should have_many :bills }
end

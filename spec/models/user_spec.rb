require 'rails_helper'

describe User do
  it { should have_many :companies }
  it { should have_many :bills }
  it { should have_many :accounts }
end

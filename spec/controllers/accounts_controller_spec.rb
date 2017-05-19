require 'rails_helper'

describe AccountsController do
    before(:each) do
      @user = FactoryGirl.create(:user)
      @company = @user.companies.create(attributes_for(:company))
      # @account = @company.accounts.create(attributes_for(:account))
    end

  describe 'GET #index' do
    it ' have a 200 response as user' do
      sign_in @user
      get :index
      expect(response.status).to eq(200)
    end

    it ' have a 302 response as non-user' do
      get :index
      expect(response.status).to eq(302)
    end
  end

  # describe 'GET #show' do
  #   it ' have a 200 response as user' do
  #     sign_in @user
  #     binding.pry
  #     get :show, company_id: @company.id, id: @account.id
  #     expect(response.status).to eq(200)
  #   end

  #   it ' have a 302 response as non-user' do
  #     get :show, company_id: @company.id, id: @account.id
  #     expect(response.status).to eq(302)
  #   end
  # end

  describe 'GET #new' do
    it ' have a 200 response as user' do
      sign_in @user
      get :new, company_id: @company.id
      expect(response.status).to eq(200)
    end

    it ' have a 302 response as non-user' do
      get :new, company_id: @company.id
      expect(response.status).to eq(302)
    end
  end
end

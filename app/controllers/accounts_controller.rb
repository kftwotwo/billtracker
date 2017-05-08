class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @accounts = current_user.accounts
    @credit_cards = current_user.credit_cards
  end

  def show
    @account = Account.find(params[:id])
    @credit_cards = @account.credit_cards
  end

  def new
    @account = Account.new
    @company = Company.find(params[:company_id])
  end

  def create
    @company = Company.find(params[:company_id])
    @account = @company.accounts.new(account_params)
    if @account.save
      flash[:success] = "Success!"
      redirect_to companies_path
    else
      flash[:alert] = "Opps..Try Again"
      render :new
    end
  end

  private

  def account_params
    params.require(:account).permit(
      :company_id,
      :user_id,
      :account_name,
      :account_number,
      :kind
    )
  end
end

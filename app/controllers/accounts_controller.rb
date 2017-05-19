class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @accounts = current_user.accounts
    @credit_cards = current_user.credit_cards
    @debit_cards = current_user.debit_cards
    @bills = current_user.bills
  end

  def show
    @account = Account.find(params[:id])
    @company = Company.find(@account.company_id)
    @credit_cards = @account.credit_cards
    @debit_cards = @account.debit_cards
    @notes = @account.notes
    @loans = @account.loans
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

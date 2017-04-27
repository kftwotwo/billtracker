class AccountsController < ApplicationController
  def index
    @accounts = current_user.accounts
  end

  def show
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

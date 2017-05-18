class LoansController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @account = Account.find(params[:account_id])
    @loan = @account.loans.new
  end

  def create
    @company = Company.find(params[:company_id])
    @account = @company.accounts.find(params[:account_id])
    @loan = @account.loans.new(loan_params)
    if @loan.save
      flash[:success] = "Success!"
      redirect_to root_path
    else
      flash[:alert] = "Opps..Try Again"
      render :new
    end
  end

  def destroy
    @loan = Loan.find(params[:id])
    @loan.destroy
    redirect_to root_path
  end

  private

  def loan_params
    params.require(:loan).permit(:user_id, :company_id, :interest, :amount)
  end
end

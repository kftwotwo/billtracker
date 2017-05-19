class BillsController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @account = Account.find(params[:account_id])
    @bill = Bill.new
  end

  def create
    @company = Company.find(params[:company_id])
    @account = @company.accounts.find(params[:account_id])
    @bill = @account.bills.new(new_bill_params)
    if @bill.save
      flash[:success] = "Success!"
      redirect_to root_path
    else
      flash[:alert] = "Opps..Try Again"
      render :new
    end
  end

  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy
    redirect_to root_path
  end

  private

  def find_category(category)
   category = Category.find_by_kind(category)
   return category.id
  end

  def new_bill_params
    bill_params.merge(category_id: find_category(bill_params[:category_id]))
  end

  def bill_params
    params.require(:bill).permit(:name, :amount, :next_due_date, :user_id, :company_id, :account_id, :category_id)
  end

end

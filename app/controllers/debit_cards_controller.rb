class DebitCardsController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @account = Account.find(params[:account_id])
    @debit_card = @account.debit_cards.new
  end

  def create
    @company = Company.find(params[:company_id])
    @account = Account.find(params[:account_id])
    @debit_card = @account.debit_cards.new(debit_card_params)
    if @debit_card.save
      flash[:success] = "Success!"
      redirect_to root_path
    else
      flash[:alert] = "Opps..Try Again"
      render :new
    end
  end

  def destroy
    @card = DebitCard.find(params[:id])
    @card.destroy
    redirect_to root_path
  end

  private

  def debit_card_params
    params.require(:debit_card).permit(
      :company_id,
      :account_id,
      :user_id,
      :name_on_card,
      :card_number,
      :expiration_date_month,
      :expiration_date_year,
      :balance
    )
  end
end

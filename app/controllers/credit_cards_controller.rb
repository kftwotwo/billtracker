class CreditCardsController < ApplicationController

  def new
    @company = Company.find(params[:company_id])
    @account = Account.find(params[:account_id])
    @credit_card = @account.credit_cards.new
  end

  def create
    @company = Company.find(params[:company_id])
    @account = Account.find(params[:account_id])
    card = params[:credit_card]
    account = Account.find(card[:account_id])
    @credit_card = account.credit_cards.new(credit_card_params)
    if @credit_card.save
      flash[:success] = "Success!"
      redirect_to root_path
    else
      flash[:alert] = "Opps..Try Again"
      render :new
    end
  end

  def destroy
    @card = CreditCard.find(params[:id])
    @card.destroy
    redirect_to root_path
  end

  private

  def credit_card_params
    params.require(:credit_card).permit(
      :company_id,
      :account_id,
      :user_id,
      :name_on_card,
      :card_number,
      :expiration_date_month,
      :expiration_date_year,
      :amount,
      :balance
    )
  end
end

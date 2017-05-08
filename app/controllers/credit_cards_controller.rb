class CreditCardsController < ApplicationController

  def new
    account = Account.find(params[:account_id])
    @credit_card = account.credit_cards.new
  end

  def create
    binding.pry
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

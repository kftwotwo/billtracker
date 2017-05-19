class NotesController < ApplicationController

  def new
      @notable = find_notable
    if @notable.class == Company
      @note = @notable.notes.new
    else
      @note = @notable.notes.new
      @company = Company.find(@notable.id)
      @account = Account.find(@notable.id)
    end
  end

  def create
    @notable = find_notable
    @note = @notable.notes.build(note_params)
    if @note.save
      flash[:success] = "Successfuly created!"
      redirect_to root_path
    else
      flash[:errors] = "Ooppss..try again!"
      redirect_to root_path
    end
  end

  def destroy
    notable = find_notable
    note = notable.notes.find(params[:id])
    note.destroy
    redirect_to root_path
  end

  private

  def note_params
    params.require(:note).permit(:entry)
  end

  def find_notable
    if params[:transaction_id]
      @notable = Transaction.find(params[:transaction_id])
    elsif params[:credit_card_id]
      @notable = CreditCard.find(params[:credit_card_id])
    elsif params[:debit_card_id]
      @notable = DebitCard.find(params[:debit_card_id])
    elsif params[:bill_id]
      @notable = Bill.find(params[:bill_id])
    elsif params[:loan_id]
      @notable = Loan.find(params[:loan_id])
    elsif params[:account_id]
      @notable = Account.find(params[:account_id])
    elsif params[:company_id]
      @notable = Company.find(params[:company_id])
    else
      @notable = Company.find(params[:id])
    end
  end
end

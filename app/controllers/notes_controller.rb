class NotesController < ApplicationController

  def new
    @notable = find_notable
    @note = @notable.notes.new
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
    binding.pry
    notable = find_notable
    note = notable.notes.find(params[:id])
    note.destroy
    redirect_to root_path
  end

  private

  def note_params
    params.require(:note).permit(:entry)
  end

  # def find_notable
  #   params.each do |name, value|
  #     if name =~ /(.+)_id$/
  #       return $1.classify.constantize.find(value)
  #     end
  #   end
  # end

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
    end
  end
end

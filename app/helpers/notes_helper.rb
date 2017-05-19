module NotesHelper
  def form_helper(params)
    if params[:credit_card_id]
      return [@company, @account, @notable, @note]
    elsif params[:account_id]
      return [@company, @notable, @note]
    else
      return [@notable, @note]
    end
  end
end

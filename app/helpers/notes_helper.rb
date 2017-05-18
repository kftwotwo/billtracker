module NotesHelper
  def form_helper(params)
    if params[:account_id]
      return [@company, @notable, @note]
    else
      return [@notable, @note]
    end
  end
end

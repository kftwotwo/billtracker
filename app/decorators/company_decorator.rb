class CompanyDecorator < Draper::Decorator
  delegate_all
  decorates :company
  decorates_finders

  def has_accounts?
    if object.accounts.empty?
      h.content_tag :p, "You do not have any accounts with this company.", class: "none"
    end
  end

end

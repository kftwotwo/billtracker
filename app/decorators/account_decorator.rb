class AccountDecorator < Draper::Decorator
  delegate_all
  decorates :account
  decorates_finders
end

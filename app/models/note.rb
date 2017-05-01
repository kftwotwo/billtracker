class Note < ApplicationRecord
  belongs_to :company
  belongs_to :bill
  belongs_to :credit_card
end

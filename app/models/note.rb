class Note < ApplicationRecord
  belongs_to :company
  belongs_to :bill
end

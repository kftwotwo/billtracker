class Bill < ApplicationRecord
  belongs_to :company
  belongs_to :user
  has_one :frequency
end

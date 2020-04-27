class Exercise < ApplicationRecord
  validates :menu, :amount, :start_time, presence: true
end

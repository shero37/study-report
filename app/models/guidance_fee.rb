class GuidanceFee < ApplicationRecord
  belongs_to :student

  validates :guidance_fee_total, :transportation_expense_total, :total, presence: true
end

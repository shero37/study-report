class Report < ApplicationRecord
  belongs_to :student
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :month
  belongs_to :day

  validates :hour, :transportation_expense, :content, presence: true
  validates :day_id, numericality: { other_than: 0 }
end

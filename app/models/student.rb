class Student < ApplicationRecord
  belongs_to :user
  has_many :reports
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :grade
  belongs_to :month

  validates :student, presence: true
  validates :grade_id, :month_id, numericality: { other_than: 0 }
end

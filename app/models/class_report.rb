class ClassReport < ApplicationRecord
  belongs_to :user
  validates :student_name, :student_level, :earnings, :date_of_class, presence: true
  paginates_per 5
end

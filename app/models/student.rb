class Student < ApplicationRecord
  belongs_to :user
  validates :name, :level, presence: true, uniqueness: true
  paginates_per 10
end

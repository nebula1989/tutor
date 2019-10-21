class Student < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :level, presence: true
  paginates_per 10
end

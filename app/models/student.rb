class Student < ApplicationRecord
  belongs_to :user
  validates :name, :level, presence: true
end

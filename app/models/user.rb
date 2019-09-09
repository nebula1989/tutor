class User < ApplicationRecord
  include Clearance::User
  has_many :class_reports
end

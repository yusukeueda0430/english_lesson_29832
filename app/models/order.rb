class Order < ApplicationRecord
  has_one    :student_details
  belongs_to :student
  belongs_to :lesson
end

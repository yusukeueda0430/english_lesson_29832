class Order < ApplicationRecord
  has_one    :student_detail
  belongs_to :student
  belongs_to :lesson
end

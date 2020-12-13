class StudentDetail < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :lebel
  belongs_to_active_hash :reach
  belongs_to_active_hash :talking_speed

  belongs_to :order
end

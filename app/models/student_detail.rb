class StudentDetail < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ryugaku_experience
  belongs_to_active_hash :overseas_residence_history
  belongs_to_active_hash :english_test

  belongs_to :order
end

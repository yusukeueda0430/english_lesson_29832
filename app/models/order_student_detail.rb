class OrderStudentDetail
  include ActiveModel::Model
  attr_accessor :student_id, :lesson_id, :token, :ryugaku_experience_id, :english_test_id, :living_place, :overseas_residence_history_id, :order_id

  with_options presence: true do
    validates :token
    validates :living_place, length: { maximum: 30 }
  end

  with_options numericality: { other_than: 1 }, presence:true do
    validates :ryugaku_experience_id
    validates :english_test_id
    validates :overseas_residence_history_id
  end

  def save
    order = Order.create(student_id: student_id, lesson_id: lesson_id)
    StudentDetail.create(ryugaku_experience_id: ryugaku_experience_id, english_test_id: english_test_id, living_place: living_place, overseas_residence_history_id: overseas_residence_history_id, order_id: order.id) 
  end
end

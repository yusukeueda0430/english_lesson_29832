class OrderStudentDetail
  include ActiveModel::Model
  attr_accessor :student_id, :lesson_id, :token, :lebel_id, :reach_id, :talking_speed_id, :order_id

  with_options presence: true do
    validates :token
  end

  with_options numericality: { other_than: 1 }, presence:true do
    validates :lebel_id
    validates :reach_id
    validates :talking_speed_id
  end

  def save
    order = Order.create(student_id: student_id, lesson_id: lesson_id)
    StudentDetail.create(lebel_id: lebel_id, reach_id: reach_id, talking_speed_id: talking_speed_id, order_id: order.id) 
  end
end

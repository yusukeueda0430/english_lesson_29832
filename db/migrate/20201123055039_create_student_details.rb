class CreateStudentDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :student_details do |t|
      t.integer     :lebel_id,         null: false
      t.integer     :reach_id,         null: false
      t.integer     :talking_speed_id, null: false
      t.integer     :order_id,         null: false, foreign_key: true
      t.timestamps
    end
  end
end

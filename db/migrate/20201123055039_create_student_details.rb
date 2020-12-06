class CreateStudentDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :student_details do |t|
      t.integer     :ryugaku_experience_id,         null: false
      t.integer     :english_test_id,               null: false
      t.string      :living_place,                  null: false
      t.integer     :overseas_residence_history_id, null: false
      t.integer     :order_id,                      null: false, foreign_key: true
      t.timestamps
    end
  end
end

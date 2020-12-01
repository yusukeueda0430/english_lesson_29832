class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer   :student_id, null: false, foreign_key: true
      t.integer   :lesson_id , null: false, foreign_key: true
      t.timestamps
    end
  end
end

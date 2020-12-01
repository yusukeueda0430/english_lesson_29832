class CreateStudentComments < ActiveRecord::Migration[6.0]
  def change
    create_table :student_comments do |t|
      t.text    :text,             null: false
      t.integer :student_id,       null: false, foreign_key: true 
      t.integer :lesson_id,        null: false, foreign_key: true 
      t.timestamps
    end
  end
end

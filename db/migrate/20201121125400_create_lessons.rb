class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string  :name,                          null: false
      t.text    :details,                       null: false
      t.integer :category_id,                   null: false
      t.integer :number_of_times_id,            null: false
      t.string  :what_day,                      null: false
      t.integer :start_time_id,                 null: false
      t.integer :end_time_id,                   null: false
      t.integer :price,                         null: false
      t.integer :teacher_id,                    null: false, foreign_key: true
      t.timestamps
    end
  end
end
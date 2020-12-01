class TeacherComment < ApplicationRecord
  belongs_to :teacher
  belongs_to :lesson

  with_options presence:true do
    validates :text, length: { maximum: 40 }
  end
end

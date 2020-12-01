class StudentComment < ApplicationRecord
  belongs_to :student
  belongs_to :lesson

  with_options presence:true do
    validates :text, length: { maximum: 40 }
  end
end

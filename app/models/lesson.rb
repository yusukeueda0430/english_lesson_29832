class Lesson < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :number_of_times
  belongs_to_active_hash :start_time
  belongs_to_active_hash :end_time

  has_one    :order
  belongs_to :teacher
  has_many   :student_comments
  has_many   :teacher_comments
  has_one_attached :image

  def self.search(search)
    if search != ""
      Lesson.where('name LIKE(?)', "%#{search}%")
    else
      Lesson.all
    end
  end

  with_options numericality: { other_than: 1 }, presence:true do
   validates :category_id
   validates :number_of_times_id
   validates :start_time_id
   validates :end_time_id
  end

  with_options presence:true do
   validates :name, length: { maximum: 40 }
   validates :details, length: { maximum: 1000 }
   validates :price, numericality: {greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message:'は半角数字、また300~999999円でお願いします' }
   validates :what_day, length: { maximum: 30 }
  end

  validate :image_presence

  def image_presence
    if image.attached?
      if !image.content_type.in?(%('image/jpeg image/png'))
         errors.add(:image, 'にはjpegまたはpngファイルを添付してください')
      end
    else
       errors.add(:image, 'ファイルを添付してください')
    end
  end
end

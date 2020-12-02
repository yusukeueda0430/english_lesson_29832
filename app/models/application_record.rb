class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def back
    Lesson.where("id < ?", self.id).order("id DESC").first
  end

  def next
    Lesson.where("id > ?", self.id).order("id ASC").first
  end
end

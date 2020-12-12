class TeacherCommentsController < ApplicationController
  before_action :authenticate_teacher!
  before_action :set_lesson
  before_action :teacher_root_path

  def create
    comment = TeacherComment.create(teacher_comment_params)
    if comment.save
      ActionCable.server.broadcast 'teacher_comment_channel', content: comment
    end  
  end

  private
  def teacher_comment_params
    params.require(:teacher_comment).permit(:text).merge(teacher_id: current_teacher.id, lesson_id: params[:lesson_id])
  end

  def teacher_root_path
    if current_teacher.id != @lesson.teacher_id
      redirect_to root_path
    end
  end

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

end

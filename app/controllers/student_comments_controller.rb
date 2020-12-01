class StudentCommentsController < ApplicationController
  before_action :authenticate_student!

  def create
    comment = StudentComment.create(student_comment_params)
    redirect_to "/lessons/#{comment.lesson.id}"  
  end

  private
  def student_comment_params
    params.require(:student_comment).permit(:text).merge(student_id: current_student.id, lesson_id: params[:lesson_id])
  end
end

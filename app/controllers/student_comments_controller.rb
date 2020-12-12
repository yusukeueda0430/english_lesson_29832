class StudentCommentsController < ApplicationController
  before_action :authenticate_student!

  def create
    comment = StudentComment.new(student_comment_params)
    if comment.save
      ActionCable.server.broadcast 'student_comment_channel', content: comment
    end 
  end

  private
  def student_comment_params
    params.require(:student_comment).permit(:text).merge(student_id: current_student.id, lesson_id: params[:lesson_id])
  end
end

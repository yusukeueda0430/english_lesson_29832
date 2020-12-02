class LessonsController < ApplicationController
  before_action :set_lesson, only: [:edit, :show, :update, :destroy]
  before_action :teacher_root_path, only: [:edit, :update, :destroy]
  before_action :authenticate_teacher!, except: [:index, :show, :search]

  def index
    @lesson = Lesson.all.order("created_at DESC")
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    if teacher_signed_in?
       @comment = TeacherComment.new
    elsif student_signed_in?
       @comment = StudentComment.new
    end
    @teacher_comments = @lesson.teacher_comments.includes(:teacher)
    @student_comments = @lesson.student_comments.includes(:student)
    @lesson_first = Lesson.first
    @lesson_last = Lesson.last
  end

  def search
    @lesson = Lesson.search(params[:keyword])
  end

  def edit

  end

  def update
    if @lesson.update(lesson_params)
      redirect_to root_path
    else
        render :edit
    end
  end

  def destroy
    if @lesson.destroy
       redirect_to root_path
    else
      render :show
    end
  end

  private
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:name, :details, :category_id, :living_place, :ryugaku_experience_id, :overseas_residence_history_id, :number_of_times_id, :what_day, :start_time_id, :end_time_id, :zoom_url, :price, :image).merge(teacher_id: current_teacher.id)
  end

  def teacher_root_path
    if current_teacher.id != @lesson.teacher_id
      redirect_to root_path
    end
  end
end

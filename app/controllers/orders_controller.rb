class OrdersController < ApplicationController
  before_action :kounyuu_root_path, only: [:index]
  before_action :set_order, only: [:index, :create]
  before_action :authenticate_student!

  def index
    @orderstudentdetail = OrderStudentDetail.new
  end

  def create
    @orderstudentdetail = OrderStudentDetail.new(order_params)
    if @orderstudentdetail.valid?
      pay_lesson
      @orderstudentdetail.save
    else
      render :index
    end
  end

  private
  def pay_lesson
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]  # 自身のPAY.JPテスト秘密鍵を記述しましょう
    Payjp::Charge.create(
      amount: @lesson.price,         # 商品の値段
      card: order_params[:token],    # カードトークン
      currency: 'jpy'                # 通貨の種類（日本円)
    )
  end

  def order_params
    params.require(:order_student_detail).permit(:ryugaku_experience_id ,:english_test_id, :living_place, :overseas_residence_history_id).merge(student_id: current_student.id, lesson_id:params[:lesson_id], token:params[:token])
  end

  def kounyuu_root_path
    @lesson = Lesson.find(params[:lesson_id])
    if @lesson.order
      redirect_to root_path
    end
  end

  def set_order
    @lesson = Lesson.find(params[:lesson_id])
  end
end

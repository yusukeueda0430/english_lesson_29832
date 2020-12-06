class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :orders
         has_many :student_comments

         name = /\A[ぁ-んァ-ン一-龥]/
         hurigana = /\A[ァ-ヶー－]+\z/
         password = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i
         phone_number = /\A0(\d{1}[-(]?\d{4}|\d{2}[-(]?\d{3}|\d{3}[-(]?\d{2}|\d{4}[-(]?\d{1})[-)]?\d{4}\z|\A0[5789]0[-]?\d{4}[-]?\d{4}\z/

         with_options presence:true do
         validates :password, format: { with: password , message: "英数字混合でお願いします" }
         validates :nickname, length: { maximum: 40 }
         validates :first_name, format: { with: name , message: "漢字、ひらがな、カタカナでお願いします" }
         validates :first_hurigana, format: { with: hurigana , message: "カタカナでお願いします"}
         validates :last_name, format: { with: name , message: "漢字、ひらがな、カタカナでお願いします" }
         validates :last_hurigana, format: { with: hurigana , message: "カタカナでお願いします" }
         validates :birthday
         validates :phone_number, format: { with: phone_number , message: "携帯でお願いします"}
         end
end

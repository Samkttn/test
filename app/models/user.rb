class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  after_create :welcome_send

  has_many :attendances
  has_many :events, through: :attendances
  has_many :events, foreign_key: 'admin_id', class_name: 'Event'




  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end

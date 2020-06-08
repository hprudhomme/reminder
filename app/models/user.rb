class User < ApplicationRecord
  has_many :block_notes
  has_many :categories
  has_many :blocks
  has_one :preference
  has_one :todolist

  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

class User < ActiveRecord::Base

  has_many :posts, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  if Rails.env.production?
    devise :database_authenticatable, :recoverable, 
           :rememberable, :trackable, :validatable
  else
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
  end
end

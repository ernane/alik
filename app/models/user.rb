class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  
  belongs_to :city
  belongs_to :state
  has_many :answers, dependent: :destroy
end

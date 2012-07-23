class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :fields,
  :city_id, :state_id, :portifolio_of_oab, :phone, :about, :avatar_url, :teaching,
  :professional, :books_published, :articles_published, :postgraduate, :doctorate_in_law,
  :master_of_law, :postgraduate_in_law, :foreign_laguage, :terms_of_use


  belongs_to :city
  belongs_to :state
  has_many :answers, dependent: :destroy

  def send_on_create_confirmation_instructions
    Devise::Mailer.delay.confirmation_instructions(self)
  end
  def send_reset_password_instructions
    Devise::Mailer.delay.reset_password_instructions(self)
  end
  def send_unlock_instructions
    Devise::Mailer.delay.unlock_instructions(self)
  end
end

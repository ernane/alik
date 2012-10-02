class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  

  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :fields,
  :city_id, :state_id, :portifolio_of_oab, :phone, :about, :avatar_url, :teaching,
  :professional, :books_published, :articles_published, :postgraduate, :doctorate_in_law,
  :master_of_law, :postgraduate_in_law, :foreign_laguage, :terms_of_use, :featured, :nickname
  
  attr_accessible :created_at, :id, :updated_at, :encrypted_password
  attr_accessible :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip
  
  captcha :nickname
  
  validates_presence_of :username, :state_id, :city_id

  belongs_to :city
  belongs_to :state
  has_many :answers, dependent: :destroy
  
  scope :featured, where(:featured => true).limit(2)
  
  def profile_name
    "#{self.username} - #{self.email}"
  end

  after_initialize :set_defaults

  def human_alik_rate
    rate = alik_rate/3
    if rate >= 8
      "Excelente"
    elsif rate >= 6
      "Otimo"
    elsif rate >= 4
      "Muito bom"
    elsif rate >= 2
      "Bom"
    else
      "Regular"
    end
  end

  def alik_rate
    value = 0
    value += teaching * 0.5
    value += professional * 2
    value += books_published * 0.5
    value += articles_published * 0.25
    value += 4 if doctorate_in_law?
    value += 4 if postgraduate_in_law?
    value += 4 if master_of_law?
    value += 4 if postgraduate?
    value += 1 if foreign_laguage?
    value
  end

  private
  def set_defaults
    self.teaching ||= 0
    self.professional ||= 0
    self.books_published ||= 0
    self.articles_published ||= 0
  end
end

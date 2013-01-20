class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :image, ImageUploader


  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :fields,
  :city_id, :state_id, :portifolio_of_oab, :phone, :about, :avatar_url, :teaching,
  :professional, :books_published, :articles_published, :postgraduate, :doctorate_in_law,
  :master_of_law, :postgraduate_in_law, :foreign_laguage, :terms_of_use, :featured, :nickname, :image

  captcha :nickname

  validates_presence_of :username, :state_id, :city_id

  belongs_to :city
  belongs_to :state
  has_many :answers, dependent: :destroy

  scope :randon, order("RAND()").limit(2).includes(:city)

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

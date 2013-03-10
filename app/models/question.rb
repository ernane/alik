class Question < ActiveRecord::Base
  acts_as_hashed
  attr_accessible :title, :description, :requester_name, :requester_email, :requester_phone, :city_id, :state_id

  validates_presence_of :title, :description, :requester_name, :requester_email, :requester_phone, :state_id
  belongs_to :city
  belongs_to :state
  has_many :answers, dependent: :destroy
  has_many :users, through: :answers

  scope :lasted_with_answers, -> {
      where('answers_count > 0').order("created_at DESC").includes([:city, :state, :users])
  }

  scope :lasted_without_answers, -> {
      order('answers_count').order("created_at DESC").includes([:city, :state, :users])
  }

  def to_param
    "#{id}-#{title}".parameterize
  end
end

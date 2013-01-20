class Question < ActiveRecord::Base
  acts_as_hashed
  attr_accessible :title, :description, :requester_name, :requester_email, :requester_phone, :city_id, :state_id, :state_name, :city_name

  validates_presence_of :title, :description, :requester_name, :requester_email, :requester_phone, :city_id, :state_id
  belongs_to :city
  belongs_to :state
  has_many :answers, dependent: :destroy
  has_many :users, :through => :answers

  scope :latest_four, order("created_at DESC").limit(5).includes([:city, :state, :answers, :users])
  scope :ordered, order("created_at DESC")
  scope :available, where(:available => true)
  scope :with_answers, where('answers_count > 0')
  scope :without_answers, where('answers_count < 0')

  def to_param
    "#{id}-#{title}".parameterize
  end
end

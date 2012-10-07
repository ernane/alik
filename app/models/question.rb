# -*- encoding : utf-8 -*-
class Question < ActiveRecord::Base
  acts_as_hashed
  
  attr_accessible :title, :description, :requester_name, :requester_email, :requester_phone, :city_id, :state_id, :state_name, :city_name
  
  attr_accessible :answers_count, :available, :created_at, :hashed_code, :id, :updated_at
  
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
  
  def state_name
    state.try(:name)
  end

  def state_name=(name)
    self.state = State.find_or_create_by_name(name) if name.present?
  end
  
  def city_name
    city.try(:name)
  end

  def city_name=(name)
    self.city = City.find_or_create_by_name(name) if name.present?
  end
  
  def to_param
    "#{id}-#{title.parameterize}"
  end

  def to_label
    title
  end
  
  define_index do
    indexes description
    indexes :title, sortable: true
    indexes answers.description, as: :answer_description
    indexes [city.name], as: :city_name
    indexes [state.name], as: :state_name
  end
  
end

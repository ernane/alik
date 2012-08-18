# -*- encoding : utf-8 -*-
class Question < ActiveRecord::Base
  acts_as_hashed
  
  attr_accessible :title, :description, :requester_name, :requester_email, :requester_phone, :city_id, :state_id

  validates_presence_of :title, :description, :requester_name, :requester_email, :requester_phone
  belongs_to :city
  belongs_to :state
  has_many :answers, dependent: :destroy
  
  scope :latest_four, order("created_at DESC").limit(4)
  scope :ordered, order("created_at DESC")
  scope :available, where(:available => true)
  scope :with_answers, where('answers_count > 0')
  scope :without_answers, where('answers_count < 0')
  
  def to_param
    "#{id}-#{title.parameterize}"
  end

  def to_label
    title
  end
  

  include PgSearch
  pg_search_scope :search, against: [:title, :description], using: {tsearch: {dictionary: "english"}}

  def self.text_search(query)
    if query.present?
      search(query)
    else
      scoped
    end
  end
end

class Question < ActiveRecord::Base
  attr_accessible :title, :description, :requester_name, :requester_email, :requester_phone, :city_id, :state_id

  validates_presence_of :title, :description, :requester_name, :requester_email, :requester_phone
  belongs_to :city
  belongs_to :state
  has_many :answers, dependent: :destroy
  
  

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

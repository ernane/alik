class Question < ActiveRecord::Base
  attr_accessible :title, :description, :requester_name, :requester_email, :requester_phone, :city_id, :city_name

  validates_presence_of :title, :description, :requester_name, :requester_email, :requester_phone
  belongs_to :city
  
  def city_name
    city.try(:name)
  end

  def city_name=(name)
    self.city = City.find_or_create_by_name(name) if name.present?
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

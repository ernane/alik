class Question < ActiveRecord::Base
  attr_accessible :title, :description, :requester_name, :requester_email, 
                  :requester_phone_area_code, :requester_phone_number

  validates_presence_of :title, :description, :requester_name, :requester_email,
                        :requester_phone_area_code, :requester_phone_number
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

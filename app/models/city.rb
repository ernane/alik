class City < ActiveRecord::Base
  attr_accessible :state_id, :name
  has_many :questions
  belongs_to :state
end

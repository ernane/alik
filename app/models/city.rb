class City < ActiveRecord::Base
  attr_accessible :state, :name
  has_many :questions
end

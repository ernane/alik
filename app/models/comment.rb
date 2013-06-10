class Comment < ActiveRecord::Base
  belongs_to :article, counter_cache: true
  attr_accessible :content, :email, :name

  validates_presence_of :content, :email, :name
end

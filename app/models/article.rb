class Article < ActiveRecord::Base
  extend FriendlyId

  belongs_to :super_admin
  has_many :comments

  attr_accessible :super_admin_id, :content, :name, :published_at

  friendly_id :name, use: :history

  scope :lasted, -> {
      order("created_at DESC").includes(:super_admin)
  }

  def author
    self.super_admin.email
  end
end

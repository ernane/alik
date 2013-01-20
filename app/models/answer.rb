class Answer < ActiveRecord::Base
  acts_as_hashed
  
  attr_accessible :evaluation, :question, :user, :description, :user
  
  belongs_to :question, counter_cache: true
  belongs_to :user
  
  validates :evaluation, inclusion: { in: %w{useful useless}, allow_nil: true }
  
  scope :useful, where(evaluation: "useful")
  scope :useless, where(evaluation: "useless")
  
  def self.evaluations
    {
      'useful'  => "Util",
      'useless' => "Inutil"
    }.invert
  end
  
end
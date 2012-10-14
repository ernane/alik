# -*- encoding : utf-8 -*-
class Answer < ActiveRecord::Base
  acts_as_hashed
  attr_accessible :evaluation, :question_id, :user_id, :description, :user
  belongs_to :question, counter_cache: true
  belongs_to :user
  
  attr_accessible :created_at, :hashed_code, :id, :updated_at
  
  validates :evaluation, inclusion: { in: %w{useful useless}, allow_nil: true }
  #after_create :delay_notification
  scope :useful, where(evaluation: "useful")
  scope :useless, where(evaluation: "useless")
  
  def self.evaluations
    {
      'useful' => "Útil",
      'useless' => "Inútil"
    }.invert
  end

  def notify
    NotificationMailer.answer(self).deliver
  end

  private
  def delay_notification
    Delayed::Job.enqueue AnswerJob.new(id: id, action: 'notify')
  end
end
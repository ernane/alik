class Answer < ActiveRecord::Base
  attr_accessible :evaluation, :question_id, :user_id, :description, :user
  belongs_to :question, counter_cache: true
  belongs_to :user
end

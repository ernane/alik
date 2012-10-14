class AnswerWork
  include Sidekiq::Worker

  def perform(answer_id)
    answer = Answer.find(answer_id)
    NotificationMailer.answer(answer).deliver
  end
end
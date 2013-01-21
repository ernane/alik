class AnswerWork
  include Sidekiq::Worker

  def perform(id)
    answer = Answer.find(id)
    NotificationMailer.answer(answer).deliver
  end
end
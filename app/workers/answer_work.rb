class AnswerWork
  include Sidekiq::Worker

  def perform(id, count)
    answer = Answer.find(id)
    NotificationMailer.answer(answer).deliver
  end
end
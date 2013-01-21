class AnswerWork
  include Sidekiq::Worker
  sidekiq_options :queue => :crawler, :timeout => 60, :retry => true, :backtrace => true

  def perform(id, count)
    answer = Answer.find(id)
    NotificationMailer.answer(answer).deliver
  end
end
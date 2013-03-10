class NotificationAnswer
  def initialize(answer)
    @answer = answer
  end

  def complete
    @answer.save.tap do |success|
      send_notification_answer_email if success
    end
  end

  def send_notification_answer_email
    NotificationMailer.delay.answer(@answer)
  end
end

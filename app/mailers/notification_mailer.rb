# -*- encoding : utf-8 -*-
class NotificationMailer < ActionMailer::Base
  default from: "Alik <contato@alik.com.br>"

  def answer(answer)
    @answer = answer
    @question = answer.question
    mail(:to => "#{@question.requester_name} <#{@question.requester_email}>", :subject => "Sua pergunta recebeu uma resposta")
  end
end

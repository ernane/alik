class AnswerJob < BaseJob

  def method_missing(method_name)
    answer.send(method_name)
  end

  private
  def answer
    @answer ||= Answer.find(params[:id])
  end
end
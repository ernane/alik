class QuestionFilter
  def self.lasted_with_answers(params = {})
    scope = Question.lasted_with_answers
    scope = scope.page(params[:page]).per(10)
    scope
  end

  def self.lasted_without_answers(params = {})
    scope = Question.lasted_without_answers
    scope = scope.page(params[:page]).per(10)
    scope
  end
end

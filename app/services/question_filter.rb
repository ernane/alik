class QuestionFilter
  def self.lasted_with_answers(params = {})
    scope = Question.lasted_with_answers
    scope = scope.paginate(page: params[:page], per_page:  10)
    scope
  end

  def self.lasted_without_answers(params = {})
    scope = Question.lasted_without_answers
    scope = scope.paginate(page: params[:page], per_page:  10)
    scope
  end
end

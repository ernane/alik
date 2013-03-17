class QuestionsController < ApplicationController
  def index
    if user_signed_in?
      @questions = QuestionsDecorator.decorate(QuestionFilter.lasted_without_answers(params))
    else
      @questions = QuestionsDecorator.decorate(QuestionFilter.lasted_with_answers(params))
    end
  end

  def new
    @question = Question.new
  end

  def show
    @answer   = Answer.new
    @question = QuestionDecorator.decorate(find_question(params[:id]))
    @answers  = AnswerDecorator.decorate(@question.answers)
  end

  def search
    @questions = Question.search(params[:search])
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to root_path, notice: t("flash.question.create.notice")
    else
      render :new
    end
  end

  private

  def find_question(question_id)
    Question.find(question_id)
  end
end

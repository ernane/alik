class AnswersController < ApplicationController
  before_filter :authenticate_user!, only: :create
  before_filter :find_question, only: [:new, :create]

  def new
    @answer = @question.answers.build
  end

  def create
    @answer = @question.answers.build(params[:answer].merge!(:user => current_user))
    notification_answer = NotificationAnswer.new(@answer)
    if notification_answer.complete
      flash[:notice] = t("flash.answer.create.notice")
      redirect_to @question
    else
      render :action => "new"
    end
  end

  def useful
    evaluate_as("useful")
  end

  def useless
    evaluate_as("useless")
  end

  private

  def evaluate_as(kind)
    @answer = Answer.find_by_hashed_code!(params[:id])
    if @answer.evaluation.nil?
      @answer.update_attribute(:evaluation, kind)
      flash[:notice] =  t("flash.answer.useful.notice") if kind == "useful"
      flash[:error]  =  t("flash.answer.useless.error") if kind == "useless"
    else
      flash[:alert]  =  t("flash.answer.evaluated.notice")
    end
    redirect_to @answer.question
  end

  def find_question
    @question = Question.find(params[:question_id])
  end
end

class AnswersController < ApplicationController
  before_filter :authenticate_user!, only: :create

  def new
    @question = Question.find(params[:product_id])
    @answer = @questions.answers.build
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(params[:answer].merge!(:user => current_user))

    if @answer.save
      flash[:notice] = t("create_sucess")
      redirect_to @question
    else
      render :action => "new"
    end
  end
end

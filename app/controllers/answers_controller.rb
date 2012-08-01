# encoding: UTF-8
class AnswersController < ApplicationController
  before_filter :authenticate_user!, only: :create
  
  def useful
    evaluate_as("useful")
  end
  def useless
    evaluate_as("useless")
  end

  def new
    @question = Question.find(params[:product_id])
    @answer = @questions.answers.build
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(params[:answer].merge!(:user => current_user))

    if @answer.save
      flash[:notice] = t("flash.answer.create.notice")
      redirect_to @question
    else
      render :action => "new"
    end
  end
  
  private
  def evaluate_as(kind)
    @answer = Answer.find_by_hashed_code!(params[:id])
    if @answer.evaluation.nil?
      @answer.update_attribute(:evaluation, kind)
      flash[:notice] = "Você avaliou a resposta positivamente!" if kind == "useful"
      flash[:error] = "Você avaliou a resposta negativamente!" if kind == "useless"
    else
      flash[:alert] = "Esta resposta já havia sido avaliada."
    end

    redirect_to @answer.question
  end
end

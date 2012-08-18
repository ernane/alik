class QuestionsController < ApplicationController
  def index
    @questions = Question.latest_four.with_answers.paginate(:page => params[:page], :per_page => 5)
    @questions_filter = Question.latest_four.paginate(:page => params[:page], :per_page => 5)
  end
  
  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end
  
  def search
    @questions = Question.text_search(params[:query]).paginate(:page => params[:page], :per_page => 5)
  end
  
  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to root_path, notice: t("flash.question.create.notice")
    else
      flash[:error] = t("flash.question.error.notice")
      redirect_to root_path 
    end
  end
end

class QuestionsController < ApplicationController
  def index
    @questions = Question.latest_four.with_answers.paginate(:page => params[:page], :per_page => 5)
    @questions_filter = Question.latest_four.paginate(:page => params[:page], :per_page => 5)
  end
  
  def new
    @question = Question.new
    respond_with @question
  end
  
  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end
  
  def search
    @search = Question.search(params[:search])
    @questions = @search.paginate(:page => params[:page])
  end
  
  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to root_path, notice: t("flash.question.create.notice")
    else
      render :new
    end
  end
end

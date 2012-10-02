class QuestionsController < ApplicationController
  respond_to :html, :json, :js
  
  rescue_from Riddle::ConnectionError do
    redirect_to root_path, :alert => t("flash.question.search.alert")
  end
  
  rescue_from ActiveRecord::RecordNotFound do
    case request.format.symbol
    when :html
      redirect_to root_path, :alert => t("flash.question.not_found.alert")
    when :json
      render :json => {:error => "Question not found"}, :status => 404
    end
  end

  def index
    @questions = Question.latest_four.with_answers.paginate(:page => params[:page], :per_page => 5)
    @questions_filter = Question.latest_four.paginate(:page => params[:page], :per_page => 5)
    respond_with(@questions)
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
end

class QuestionsController < ApplicationController
  def index
    @questions = Question.paginate(:page => params[:page], :per_page => 5)
  end
  
  def search
    @questions = Question.text_search(params[:query]).paginate(:page => params[:page], :per_page => 5)
  end
end

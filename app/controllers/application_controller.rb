class ApplicationController < ActionController::Base
  protect_from_forgery
  respond_to :html, :json
  
  rescue_from ActiveRecord::RecordNotFound do
    case request.format.symbol
    when :html
      redirect_to root_path, :alert => t("flash.question.not_found.alert")
    when :json
      render :json => {:error => "Question not found"}, :status => 404
    end
  end
  
  private

  def current_search
    @search = Question.search(params[:search])
  end
  helper_method :current_search
end

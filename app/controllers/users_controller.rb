class UsersController < ApplicationController

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
    @users = User.all
  end

  def show
    @user = UserDecorator.find(params[:id])
  end

  def search
    @users = User.search(params[:name], :with => {:state_id => params[:states]})
  end
end
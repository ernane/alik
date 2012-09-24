class StatesController < ApplicationController
  def index
    @states = State.order(:name).where("name like ?", "%#{params[:term]}%")
    render json: @states.map(&:name)
  end
end
class SiteController < ApplicationController
  def index
    if user_signed_in?
      @questions = QuestionsDecorator.decorate(QuestionFilter.lasted_without_answers(params))
    else
      @questions = QuestionsDecorator.decorate(QuestionFilter.lasted_with_answers(params))
    end
  end

  def sobre
  end

  def cidades
    state_id = params[:id].to_i
    cities = City.where(:state_id => state_id)
    cty = []
    cities.each do |city|
      cty << {:id => city.id, :n => city.name}
    end
    render :json => {:cty => cty.compact}.as_json
  end
end

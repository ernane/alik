class SiteController < ApplicationController
  layout 'application_new'

  def index
    @question = Question.latest_four.with_answers.paginate(page: params[:page], per_page:  10)
    @questions = QuestionsDecorator.decorate(@question)
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

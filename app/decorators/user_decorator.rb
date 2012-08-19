# encoding: UTF-8
class UserDecorator < Draper::Base
  decorates :user
  
  def articles
    handle_none_number model.articles_published do
      model.articles_published
    end
  end
  
  def books
    handle_none_number model.books_published do
      model.books_published
    end
  end
  
  def professional
    handle_none_number model.professional do
      model.professional
    end
  end
  
  def teaching
    handle_none_number model.teaching do
      model.teaching
    end
  end
  
  def fields
    handle_none model.fields do
      model.fields
    end
  end
  
  def about
    handle_none model.about do
      model.about
    end
  end
  
  def oab
    handle_none model.portifolio_of_oab do
      model.portifolio_of_oab
    end
  end
  
  def state
    handle_none model.state do
      model.state.name
    end
  end
  
  def city
    handle_none model.city do
      model.city.name
    end
  end
  
  def phone
    handle_none model.phone do
      model.phone
    end
  end
  
  private

  def handle_none(value)
    if value.present?
      yield
    else
      h.content_tag :span, "Não Informado", class: "none"
    end
  end
  
  def handle_none_number(value)
    if value.present?
      yield
    else
      h.content_tag :span, "Ainda não possui", class: "none"
    end
  end
end

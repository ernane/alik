Alik::Application.routes.draw do

  devise_for :users

  root :to => "questions#index"

  match "/delayed_job" => DelayedJobWeb, :anchor => false

  resources :contacts, :path => "contato"

  resources :questions, :path => "perguntas" do
    get 'pagina/:page', :action => :index, :on => :collection
    resources :answers
  end

  controller :site do
    get "/quem-somos", :action => :about, :as => :about
  end

  controller :questions do
    get "/questions/search", :action => :search, :as => :search_questions
  end
end

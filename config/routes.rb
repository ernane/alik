Alik::Application.routes.draw do
  mount RailsAdmin::Engine => '/manager', :as => 'rails_admin'
  devise_for :super_admins

  %w[sobre cidades estados].each do |page|
    get page, controller: 'site', action: page
  end

  devise_for :users

  root to: "questions#index"

  resources :contacts, path: "contato",  path_names: { new: "enviar" }
  resources :users,    path: "usuarios", only: [:index, :show]

  namespace :blog do
    resources :articles, path: "artigos", only: [:index, :show] do
      get 'page/:page', action: :index, on: :collection
      resources :comments
    end
  end

  controller :questions do
    get "/questions/search",:action => :search, :as => :search_questions
  end

  resources :questions, path: "perguntas", except: [:destroy, :edit], path_names: { new: "criar" } do
    get 'page/:page', action: :index, on: :collection

    resources :answers do
      member do
        get :useful
        get :useless
      end
    end
  end
end

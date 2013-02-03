Alik::Application.routes.draw do
  %w[sobre cidades estados].each do |page|
    get page, controller: 'site', action: page
  end

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  root :to => "questions#index"

  resources :contacts,  :path => "contato", :path_names => {:new => "enviar"}
  resources :states,    :only => :index
  resources :cities,    :only => :index

  resources :questions, :path => "perguntas", :except => [:destroy, :edit], :path_names => {:new => "criar"} do
    get 'pagina/:page', :action => :index, :on => :collection
    resources :answers do
      member do
        get :useful
        get :useless
      end
    end
  end

  resources :answers, path: 'respostas', only: [:new, :create], path_names: {new: 'nova'} do
    member do
      get :useful
      get :useless
    end
  end

  controller :questions do
    get "/questions/search",:action => :search, :as => :search_questions
  end

  controller :users do
    get "/usuarios",    :action => :index, :as =>:users
    get "/usuario/:id", :action => :show, :as =>:user
    get "/users/search", :action => :search, :as => :search_users
  end
end

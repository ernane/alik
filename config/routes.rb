Alik::Application.routes.draw do
  %w[sobre cidades estados].each do |page|
    get page, controller: 'site', action: page
  end

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  root :to => "site#index"

  resources :contacts, path: "contato", path_names: { new: "enviar" }
  resources :users, path: "usuarios", only: [:index, :show]

  resources :questions, path: "perguntas", except: [:destroy, :edit], path_names: { new: "criar" } do
    get 'pagina/:page', action: :index, on: :collection
    resources :answers do
      member do
        get :useful
        get :useless
      end
    end
  end

  controller :questions do
    get "/questions/search",:action => :search, :as => :search_questions
  end
end

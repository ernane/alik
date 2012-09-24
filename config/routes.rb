Alik::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  
  devise_for :users, :path => "usuarios", 
             :path_names => { :sign_in => 'login', :sign_out => 'logout', 
                              :password => 'secret', :confirmation => 'verification', 
                              :unlock => 'unblock', :registration => 'register', 
                              :sign_up => 'cmon_let_me_in' }

  root :to => "questions#index"
  match "/delayed_job" => DelayedJobWeb, :anchor => false

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

  controller :site do
    get "/quem-somos", :action => :about, :as => :about
  end

  controller :questions do
    get "/questions/search",:action => :search, :as => :search_questions
  end
  
  controller :users do
    get "/usuarios",    :action => :index, :as =>:users
    get "/usuario/:id", :action => :show, :as =>:user
  end
end

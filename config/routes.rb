Alik::Application.routes.draw do

  root :to => "questions#index"

  resources :contacts
  resources :questions, :path => "perguntas" do
    get 'pagina/:page', :action => :index, :on => :collection
  end

  controller :site do
    get "/quem-somos", :action => :about, :as => :about
  end
end

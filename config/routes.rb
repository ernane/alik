Alik::Application.routes.draw do

  root :to => "questions#index"

  match "/delayed_job" => DelayedJobWeb, :anchor => false

  resources :contacts, :path => "contato"
  resources :questions, :path => "perguntas" do
    get 'pagina/:page', :action => :index, :on => :collection
  end

  controller :site do
    get "/quem-somos", :action => :about, :as => :about
  end
end

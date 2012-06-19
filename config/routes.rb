Alik::Application.routes.draw do
  root :to => "questions#index"
  
  resources :questions, :path => "perguntas" do
    get 'pagina/:page', :action => :index, :on => :collection
  end
end

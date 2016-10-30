Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  resources :readings do
  	member do
  		get :share
  	end
  	member do
  		get :read
  	end
  	member do
  		get :pray
  	end
  	member do
  		get :bless
  	end
  	member do
  		get :talk
  	end
  end
  

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
 
 
  get 'pages/index'
 
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :posts do
    resources :comments, only: [:create]
  end
  
  # Defines the root path route ("/")
 root "posts#index"
end

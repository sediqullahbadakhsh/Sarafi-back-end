Rails.application.routes.draw do
  # Admin
  post '/auth/login', to: 'authentication#login'
  resources :user_roles, only: :index
    resources :users, only: [:index, :create, :show, :update] do
      resources :user_sarafiss, only: [:index, :create]
      resources :sarafis, only: [:index, :create, :show, :update] do
        resources :user_sarafis, only: [:index, :create]
      end
  end
    
end
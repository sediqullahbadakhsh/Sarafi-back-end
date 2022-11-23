Rails.application.routes.draw do
  
    resources :user_roles, only: :index
    resources :users, only: [:index, :create, :show, :update] do
      get 'displaySarafi', to: 'user_sarafis#userIndex'
    end
    resources :sarafis, only: [:index, :create, :show, :update] do
      resources :user_sarafis, only: [:index, :create]
    end 
end
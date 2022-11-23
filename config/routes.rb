Rails.application.routes.draw do
  defaults: { format: :json } do
    resources :user_roles, only: :index
    resources :users, only: [:index, :create, :show, :update] do
      get 'displaySarafi', to: 'UserSarafis#userIndex'
    end
    resources :sarafis, only: [:index, :create, :show, :update] do
      resources :user_sarafis, only: [:index, :create]
    end 
  end
end

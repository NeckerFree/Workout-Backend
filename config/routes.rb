Rails.application.routes.draw do
  resources :users
  resources :users, only: [:index, :show, :destroy, :create] do
    resources :trainings, only: [:index, :show, :destroy, :create]
  end
  post 'authenticate', to: 'authentication#authenticate'
end

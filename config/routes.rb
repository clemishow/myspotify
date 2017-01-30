Rails.application.routes.draw do

  # ROUTES
  resources :albums, only: [:index, :show]

  # API NAMESPACE
  namespace :api do
    resources :tokens, only: [:create, :show]
    resources :albums, only: [:index]
  end

  # INDEX
  root to: 'albums#index'
end

Rails.application.routes.draw do
  resources :categories
  resources :poems do
    resources :comments, only: %i[create destroy edit update]
  end
  resources :users, only: %i[new create]
  resources :sessions, only: %i[new create destroy]
  root 'pages#index'
end

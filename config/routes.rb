Rails.application.routes.draw do
  resources :poems do
    resources :comments, only: %i[create destroy edit update]
  end
  resources :users, only: %i[new create]
  root 'pages#index'
end

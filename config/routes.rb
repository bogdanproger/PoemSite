Rails.application.routes.draw do
  resources :poems do
    resources :comments, only: %i[create]
  end
  root 'pages#index'
end

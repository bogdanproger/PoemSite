Rails.application.routes.draw do
  resources :poems do
    resources :comments, only: %i[create destroy edit update]
  end
  root 'pages#index'
end

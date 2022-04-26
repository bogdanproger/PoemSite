Rails.application.routes.draw do
  resources :poems, only: %i[index new edit create update]
  root 'pages#index'
end

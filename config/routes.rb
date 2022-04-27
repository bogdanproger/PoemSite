Rails.application.routes.draw do
  resources :poems
  root 'pages#index'
end

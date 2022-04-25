Rails.application.routes.draw do
  root 'pages#index'
  get '/poems', to: 'poems#index'
  get '/poems/new', to: 'poems#new'
end

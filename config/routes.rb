Rails.application.routes.draw do
  root 'pages#index'
  #get '/poems', to: 'poems#index'
  #get '/poems/new', to: 'poems#new'
  #get '/poems/:id/edit', to: 'poems#edit'
  post '/poems', to: 'poems#create'

  resources :poems, only: %i[index new edit create]
end

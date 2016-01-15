Rails.application.routes.draw do
  root 'movies#index'
  get '/movies', to: 'movies#index', as: :movies

  get '/movies/new', to: 'movies#new', as: :new

  post '/movies', to: 'movies#create'

  get 'movies/:id', to: 'movies#show', as: :movie

  get 'movies/:id/edit', to: 'movies#edit', as: :edit

  patch 'movies/:id', to: 'movies#update'

  delete 'movies/:id', to: 'movies#destroy'
end

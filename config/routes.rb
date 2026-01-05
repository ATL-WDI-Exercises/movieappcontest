Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'

  get '/explore', to: 'static_pages#explore', as: :explore

  get '/movies', to: 'movies#index', as: :movies

  get '/movies/new', to: 'movies#new', as: :new

  post '/movies', to: 'movies#create', as: :create

  get 'movies/:id', to: 'movies#show', as: :movie

  get 'movies/:id/edit', to: 'movies#edit', as: :edit

  patch 'movies/:id', to: 'movies#update'

  delete 'movies/:id', to: 'movies#destroy'
end

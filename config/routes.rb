Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/movies', to: 'movies#index', as: :movies
  # get '/lists', to: 'lists#index', as: :lists
  # get '/lists/new', to: 'lists#new', as: :new_list
  # post '/lists/', to: 'lists#create'
  # get '/lists/:id', to: 'lists#show', as: :list
  resources :lists do
    resources :bookmarks, only: [:index, :new, :create]
  end
  resources :bookmarks, only: [ :destroy ]
end

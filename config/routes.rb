Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:new, :create, :show, :index] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

  # resources :movies
  # Defines the root path route ("/")
  # root "articles#index"
end

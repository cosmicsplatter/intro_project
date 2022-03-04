Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pokemons#index"

  resources :pokemons
  resources :egg_groups
  resources :types
  # Defines the root path route ("/")
  # root "articles#index"
end

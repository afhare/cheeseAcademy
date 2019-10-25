Rails.application.routes.draw do
  resources :flavor_profiles
  resources :flavors
  resources :cheeses

  get '/cheeses/:id/add_flavor_profile', to: 'flavor_profiles#new', as: 'add_flavor_profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :cheese_milks
  resources :cheese_textures
  resources :flavor_wheels
  resources :milks
  resources :textures
  resources :flavors
  resources :cheeses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

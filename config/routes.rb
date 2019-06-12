Rails.application.routes.draw do
  resources :ingredients
  resources :recipe_ingredients
  resources :messages
  resources :user_events
  resources :sources
  resources :events
  resources :locations
  resources :menu_recipes
  resources :recipes
  resources :menus
  root to: 'visitors#index'
  devise_for :users
  resources :users
end

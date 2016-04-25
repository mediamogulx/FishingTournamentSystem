Rails.application.routes.draw do
  root to: 'visitors#index'
  resources :angler
  resources :signup
  resources :tournament
end

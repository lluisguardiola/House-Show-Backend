Rails.application.routes.draw do
  resources :neighborhoods, only: :index
  resources :performers, only: :index
  resources :events
end

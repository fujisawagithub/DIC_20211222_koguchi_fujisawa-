Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'users#new'
  resources :blogs
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:index, :create, :destroy]
end

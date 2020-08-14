Rails.application.routes.draw do
  devise_for :users
  root to: 'home#home'
  resources :users
  resources :raps, only: [:index, :new, :create, :show, :update, :edit, :destroy]
  resources :beats, only: [:index, :new, :create, :show, :update, :edit, :destroy]
  resources :compositions, only: [:index, :new, :create, :show, :update, :edit, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

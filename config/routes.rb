Rails.application.routes.draw do
  root to: 'home#home'
  resources :raps, only: [:index, :create, :update, :edit]
    resources :beats, only: [:index, :create, :update, :edit]
    resources :compositions, only: [:index, :create, :update, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

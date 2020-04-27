Rails.application.routes.draw do
  root 'tops#index'
  resources :foods, only: [:index, :new, :create]
  resources :exercises, only: [:index, :new, :create]
  resources :measures, only: [:index, :new, :create]
  resources :drugs, only: :index
end

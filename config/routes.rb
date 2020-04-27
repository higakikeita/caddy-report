Rails.application.routes.draw do
  devise_for :users
  get 'top/index'

  root "top#index"
  resources :users, only: %i(show)
  resources :reports, only: [:index,:new,:create]
end

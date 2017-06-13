Rails.application.routes.draw do
  resources :comments
  resources :posts
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'home/index', to: 'home#create'
end

Rails.application.routes.draw do
  resources :all_videos
  resources :crunch_reports
  resources :disrupts
  resources :bullishes
  resources :socials
  resources :mobiles
  resources :startups
  resources :posts do
    resources :comments
  end
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'home/index', to: 'home#create'
  post 'mobile/show', to: 'mobile#create_comment'
end

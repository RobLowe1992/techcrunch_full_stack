Rails.application.routes.draw do
  resources :posts

  resources :all_videos # you only have views for index and new
  resources :crunch_reports, only: [:index]
  resources :disrupts, only: [:index]
  resources :bullishes, only: [:index]
  resources :socials
  resources :mobiles
  resources :startups
  resources :posts do
    resources :comments
  end
  devise_for :users

  resources :home, only: [:destroy]
    root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'home/index', to: 'home#create'
  post 'mobile/show', to: 'mobile#create_comment' # see note in mobile controller
end

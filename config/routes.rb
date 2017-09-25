Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }

  resources :cuties do
    resources :posts
  end
  
  root 'cuties#index'

  resources :users, only: [:index, :show]
end

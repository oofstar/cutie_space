Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  root 'cuties#index'

  resources :cuties do
    resources :posts
  end

  resources :users, only: [:index, :show]
end

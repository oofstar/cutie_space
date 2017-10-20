Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }

  resources :cuties do
    resources :posts
  end

  root 'static_pages/users#index'

  resources :users, only: [:index, :show]

  namespace :api do
    namespace :v1 do
      resources :users
      resources :cuties
    end
  end

  namespace :admin do
    resources :users, only: [:index, :destroy, :edit, :update]
  end

  namespace :static_pages do
    resources :users
  end
end

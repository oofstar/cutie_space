Rails.application.routes.draw do
  devise_for :users
  root 'cuties#index'



  resources :cuties
  resources :users, only: [:index, :show]
end

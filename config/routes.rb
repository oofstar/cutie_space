Rails.application.routes.draw do
  devise_for :users
  root 'cuties#index'

  resources :cuties

end

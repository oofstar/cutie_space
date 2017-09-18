Rails.application.routes.draw do
  root 'cuties#index'

  resources :cuties

end

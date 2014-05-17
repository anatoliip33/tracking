Tracking::Application.routes.draw do
  resources :requests

  resources :ticket

  resources :probas

 
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  

  root to: 'history#index'
end
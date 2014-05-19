Tracking::Application.routes.draw do

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :tickets, param: :code

  root to: 'history#index'
end

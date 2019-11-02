Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # devise_for :users
  resources :comments
  get 'page/info'
  root to: redirect('/ideas')
  resources :ideas, only: [:show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

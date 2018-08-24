Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor', as: 'chkeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  get 'home/new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end

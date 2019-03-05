Rails.application.routes.draw do
  root 'charges#new'
  resources :homes
  resources :events
  resources :user
  resources :attendances
  devise_for :users
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

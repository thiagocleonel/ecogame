Rails.application.routes.draw do
  resources :premiations
  resources :badges
  resources :donations
  resources :materials
  resources :citizens
  resources :ecopoints
  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

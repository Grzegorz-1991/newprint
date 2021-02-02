Rails.application.routes.draw do
  root 'pages#home'
  get 'realizacje', to: 'pages#index'
  get 'cennik', to: 'pages#cennik'
  get 'kontakt', to: 'pages#kontakt'
  resources :busy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

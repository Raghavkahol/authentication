Rails.application.routes.draw do
 get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'login',to: 'sessions#new'
  delete'logout',to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
 get 'pages/index'
 get 'profile', to: 'pages#show'
 resources :users
end

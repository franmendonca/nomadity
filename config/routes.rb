Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'profile', to: 'pages#profile'
  get 'routes', to: 'pages#routes'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :experiences, only: [:index, :show] do
    resources :favorites, only: [:create]
  end
  resources :favorites, only: [:destroy, :show]
  resources :categories, only: [:index]
  resources :profile, only: [:show]

end

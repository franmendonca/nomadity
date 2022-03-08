Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'profile', to: 'pages#profile'
  get "directions", to: "pages#directions"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :experiences, only: [:index, :show] do
    resources :favorites, only: [:create]
  end
  resources :favorites, only: [:destroy]
  resources :categories, only: [:index]
end

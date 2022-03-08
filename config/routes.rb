Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'profile', to: 'pages#profile'
  get "directions", to: "pages#directions"
  # Errors pages:
  match '/404', to: 'errors#not_found', via: :all
  match '/500', to: 'errors#internal_server', via: :all
  match '/422', to: 'errors#unprocessable', via: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :experiences, only: [:index, :show] do
    resources :favorites, only: [:create]
  end
  resources :favorites, only: [:destroy]
  resources :categories, only: [:index]
end

Rails.application.routes.draw do
  get 'sessions/new'
  root 'posts#index', as: 'home'
  get '/createaccount', to: 'authors#new', as: 'log_in'

  get 'signup', to: 'authors#new', as: 'signup'
  get 'profile', to: 'authors#profile', as: 'profile'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :sessions

  resources :authors, only: %i[new create] do
    get :profile, on: :collection
    patch :save_profile, on: :collection
  end
  post 'vote', to: 'votes#vote'
  resources :posts do
    get 'search', on: :collection
    resources :comments do
      member do
        post :publish
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

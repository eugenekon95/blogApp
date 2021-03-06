Rails.application.routes.draw do
  root 'posts#index', as: 'home'
  resources :posts do
    get 'search', on: :collection
    resources :comments do
      member do
        post :publish
      end
    end
  end

  resources :authors, only: %i[new create] do
    get :profile, on: :collection
    patch :save_profile, on: :collection
  end

  post 'vote', to: 'votes#vote'

  get 'signup', to: 'authors#new', as: 'signup'
  get 'profile', to: 'authors#profile', as: 'profile'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spaces, only: [:show, :new, :create] do
    collection do
      get 'search'
      get 'my_bookings'
    end
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index] do
     member do
        patch 'accept'
        patch 'reject'
      end
    resources :payments, only: [:new, :create]
  end

end

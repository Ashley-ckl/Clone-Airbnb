Rails.application.routes.draw do
  get 'payments/new'
  get 'payments/create'
  devise_for :users
  root to: 'spaces#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spaces, only: [:index, :show, :new, :create] do
    collection do
      get 'search'
    end
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create] do
      resources :payments, only: [:new, :create]
    end
  end

end

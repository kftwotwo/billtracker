Rails.application.routes.draw do
  devise_for :users

  root 'accounts#index'

  resources :companies do
    resources :notes, only: [:create, :new]
    resources :accounts do
      resources :notes, only: [:create, :new]
      resources :credit_cards
    end
  end
end

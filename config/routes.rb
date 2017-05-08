Rails.application.routes.draw do
  devise_for :users

  root 'accounts#index'

  resources :credit_cards

  resources :companies do
    resources :accounts do
      resources :credit_cards
    end
  end
end

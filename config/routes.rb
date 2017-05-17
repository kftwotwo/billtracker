Rails.application.routes.draw do
  devise_for :users

  root 'accounts#index'

  resources :companies do
    resources :notes

    resources :accounts do
      resources :notes
      resources :credit_cards
    end
  end
end

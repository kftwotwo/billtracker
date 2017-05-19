Rails.application.routes.draw do
  devise_for :users

  root 'accounts#index'

  resources :categories, only: [:new, :create, :destroy]

  resources :companies do
    resources :notes, only: [:new, :create, :destroy]

    resources :accounts do
      resources :notes, only: [:new, :create, :destroy]

      resources :credit_cards do
        resources :notes, only: [:new, :create, :destroy]
        resources :transactions, only: [:new, :create]
      end

      resources :debit_cards do
        resources :notes, only: [:new, :create, :destroy]
        resources :transactions, only: [:new, :create]
      end

      resources :bills do
        resources :notes, only: [:new, :create, :destroy]
        resources :transactions, only: [:new, :create]
      end

      resources :loans do
        resources :transactions, only: [:new, :create]
      end
    end
  end
end

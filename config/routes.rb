Rails.application.routes.draw do
  devise_for :users

  root 'accounts#index'

  resources :companies do
    resources :notes, only: [:new, :create, :destroy]

    resources :accounts do
      resources :notes, only: [:new, :create, :destroy]

      resources :credit_cards do
        resources :notes, only: [:new, :create, :destroy]
      end

      resources :debit_cards do
        resources :notes, only: [:new, :create, :destroy]
      end

      resources :debit_cards do
        resources :notes, only: [:new, :create, :destroy]
      end

      resources :loans
    end
  end
end

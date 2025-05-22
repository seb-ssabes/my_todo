Rails.application.routes.draw do
  root "home#index"

  resources :tasks, only: [:create, :update, :destroy]

  resources :projects do
    resources :sections do
      resources :tasks, only: [:create, :update, :destroy]
    end
  end
end

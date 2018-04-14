Rails.application.routes.draw do
  resources :sales do
    member do
      post 'close'
    end
  end
  root 'home#index'
  get 'home/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :articles
  resources :categories, only: [:index]
  resources :enterprises, only: [:new, :create, :update, :edit]
end 

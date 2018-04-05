Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :articles
end

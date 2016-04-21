Rails.application.routes.draw do
  root to: 'home#index'

  resources :users, only: %w(create)
  resources :pictures, only: %w(create)

  namespace :api do
    resources :pictures, only: %w(index show create destroy)
    resources :directories, only: %w(index)
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :events do
    resource :entry, only: [:create, :update, :destroy]
  end
end


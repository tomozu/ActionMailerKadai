Rails.application.routes.draw do
  root to: 'tops#index' 
  resources :blogs do
  # resources :index
    collection do
      post :confirm
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end
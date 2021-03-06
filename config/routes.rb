Rails.application.routes.draw do
  root to: 'tops#index' 
  resources :blogs do
  # resources :index
    collection do
      post :confirm
    end
  end
  resources :contacts
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :favorites, only:[:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
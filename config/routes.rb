Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'pages/terminos_de_uso', to: "pages#terminos_de_uso", as: "terminos_de_uso"
  resources :users, only: [:show]
  resources :books
  get 'mybooks', to: 'books#my_books', as: :my_books
  resources :matches, except: [:destroy] do
    member do
      patch :cancel
    end
  end
  get 'mymatches', to: 'matches#my_matches', as: :my_matches
  resources :bookclubs
  resources :chatrooms, only: [:index, :show, :create] do
    resources :messages, only: :create
  end
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, except: [:new, :edit]

  resources :artworks, except: [:new, :edit, :index]

  resources :artwork_shares, only: [:create, :destroy]
  
  resources :users do
    resources :artworks, only: [:index]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end

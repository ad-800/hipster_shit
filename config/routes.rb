Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users, :controllers => { :registrations => 'users/registrations' }
  root to: "pages#home"

  resources :products do
    resources :purchases, only: [:create, :new]
  end

  resources :users, only: [:show]
end

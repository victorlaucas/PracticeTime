Rails.application.routes.draw do
  resources :charges, only: [:new, :create]

  namespace :admin do
    resources :users
    resources :blogs

    root to: "users#index"
  end

  devise_for :users
  root to: 'pages#home'

  get 'about', to: 'pages#about'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

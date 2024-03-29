Rails.application.routes.draw do



  root to: 'homes#top'
  devise_for :users

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy ]
  resources :users, only: [:new, :show, :edit, :update, :index]

  get "home/about" => "homes#about"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

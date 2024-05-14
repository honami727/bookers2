Rails.application.routes.draw do
  
  delete 'books/:id' => 'books#destroy',as: 'destroy_book'
  post 'books' => 'books#create'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  devise_for :users
  root to: 'homes#top'
  get '/homes/about' => 'homes#about', as: "about"
  resources :users, only: [:show, :edit, :update, :index]
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

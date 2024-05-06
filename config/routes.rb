Rails.application.routes.draw do
  get '/top' => 'homes#top'
  get 'books/new'
  get '/books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/edit'  => 'books#edit'
  post 'books' => 'books#create'
  resources :post_images, only: [:new, :create, :index, :show]
  devise_for :users
  root to: 'homes#top'
  get '/homes/about' => 'homes#about', as: "about"
  resources :users, only: [:show, :edit, :update, :index]
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

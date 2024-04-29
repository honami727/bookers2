Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get '/homes/home' => 'homes#home', as: "home"
  get '/homes/welcome' => 'homes#welcome', as: "welcome"
  get '/homes/about' => 'homes#about', as: "about"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

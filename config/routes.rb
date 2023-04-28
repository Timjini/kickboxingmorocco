Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root "home#index"

  get "/contact" => "home#contact"
  get "/about" => "home#about"
end

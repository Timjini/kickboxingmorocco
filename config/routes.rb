Rails.application.routes.draw do
  resources :posts
  root "home#index"

  get "/contact" => "home#contact"
  get "/about" => "home#about"
end

Rails.application.routes.draw do
  devise_for :coaches
  devise_for :users
  resources :posts
  root "home#index"

  get "/contact" => "home#contact"
  get "/about" => "home#about"
  get "/enquete" => "home#enquete"
  get "/merci" => "home#merci"


  
  resources :questionnaires do
    get 'enquete', to: 'questionnaires#new', on: :collection
  end




  # api routes
  namespace :api do
    namespace :v1 do
      resources :individual_sessions
    end
  end
end

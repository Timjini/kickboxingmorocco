Rails.application.routes.draw do
  devise_for :coaches
  devise_for :users
  resources :posts
  root "home#index"

  get "/contact" => "home#contact"
  get "/about" => "home#about"
  get "/enquete" => "home#enquete"


  
  resources :questionnaires do
    resources :answers
    get 'enquete', to: 'questionnaires#enquete', on: :collection
  end




  # api routes
  namespace :api do
    namespace :v1 do
      resources :individual_sessions
    end
  end
end

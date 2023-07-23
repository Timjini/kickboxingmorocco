Rails.application.routes.draw do
  devise_for :coaches
  devise_for :users
  resources :posts
  root "home#index"

  get "/contact" => "home#contact"
  post "/contact" => "home#create_contact"

  resources :contacts
  get "/about" => "home#about"
  # get "/enquete" => "home#enquete"
  get "/merci" => "home#merci"


  
  resources :questionnaires do
    get 'enquete', to: 'questionnaires#new', on: :collection
  end

  resources :programmes

  get "/dashboard" => "dashboards#index"
  get "/profile" => "dashboards#profile"
  
  resources :questionnaire_seniors do
    get 'enquete', to: 'questionnaire_seniors#new', on: :collection
  end




  # api routes
  namespace :api do
    namespace :v1 do
      resources :individual_sessions
    end
  end
end

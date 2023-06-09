Rails.application.config.middleware.insert_before 0, Rack::Cors do
  
  allow do
    origins 'http://localhost:5000', 'https://www.coachissam.com', 'https://kickboxingmorocco.club'
    resource '/api/v1/individual_sessions', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
  end
  

end
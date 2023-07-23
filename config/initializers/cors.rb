Rails.application.config.middleware.insert_before 0, Rack::Cors do
  
  allow do
    origins 'https://coachissam.com'
    resource '/api/v1/individual_sessions', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options]
  end
  

end
# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'
      resource '*', headers: :any, methods: [:get, :post, :patch, :put]
    end

    allow do
      origins 'https://www.coachissam.com'
      resource '*', headers: :any, methods: [:get, :post, :patch, :put]
    end
  end
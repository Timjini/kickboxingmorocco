# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://coachissam.com' # Replace this with the actual domain of your frontend application

    # Set the HTTP methods that are allowed in the request
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true # This is optional. Set it to true if your frontend needs to send cookies or authentication headers.

    # You can add more specific configurations if needed, for example:
    # resource '/api/*', headers: :any, methods: [:get, :post], credentials: true
  end
end

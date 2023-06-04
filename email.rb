require 'sendgrid-ruby'
include SendGrid
require 'dotenv'

Dotenv.load('.env')


from = Email.new(email: 'contact@kickboxingmorocco.club')
to = Email.new(email: 'issammouktahime@gmail.com')
subject = 'Sending with SendGrid is Fun'
content = Content.new(type: 'text/plain', value: 'This is an email application for KBM, hanta a khoya issam rah khedam')
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: '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')
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers

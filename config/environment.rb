# Load the Rails application.
# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  port: '587',
  authentication: :plain,
  user_name: ENV['samah.aldafy.1994@gmail.com'],
  password: ENV['0598290079'],
  domain: 'heroku.com',
  enable_starttls_auto: true
}
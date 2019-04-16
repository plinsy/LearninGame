# Load the Rails application.
require_relative 'application'
require 'sendgrid-ruby'
ActionMailer::Base.smtp_settings = {
  :user_name => ENV['API_KEY'],
  :password => ENV['SECRETE_KEY'],
  :domain => 'sendgrid.net',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
# Initialize the Rails application.
Rails.application.initialize!

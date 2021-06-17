# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
  :api_key => ENV['MAILJET_API_KEY'],
  :secret_key => ENV['MAILJET_SECRET_KEY'],
  :address => 'in-v3.mailjet.com',
  :port => 587
}


# ActionMailer::Base.smtp_settings =   {
#     :address            => 'smtp.gmail.com',
#     :port               => 587,
#     :domain             => 'gmail.com', #you can also use google.com
#     :authentication     => :plain,
#     :user_name          => ENV['GMAIL_LOGIN'],
#     :password           => ENV['GMAIL_PWD']
   
#   }

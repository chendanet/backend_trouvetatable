class UserMailer < ApplicationMailer
    default from: 'trouvetatable@yopmail.com'

    def welcome_email(user)
      @user = user
      mail(
        to: @user.email,
        subject: 'Welcome to the Trouvetatable',
      )
    end
end
  
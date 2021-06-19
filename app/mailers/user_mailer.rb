class UserMailer < ApplicationMailer
    default from: 'trouvetatable@gmail.com'

    def welcome_email(user)
      @user = user

      @url = 'https://trouvetatable.herokuapp.com/'
      mail(
        to: @user.email,
        subject: 'Bienvenue chez Trouvetatable'
      )
    end
end
  
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

    def forgot_password_email(user)
      @user = user
      @url  = 'http://localhost:3000/password/reset'
      mail(to: @user.email, subject: 'Bienvenue chez nous !')
    end
end
  
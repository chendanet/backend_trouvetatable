class UserMailer < ApplicationMailer
    default from: 'trouvetatable@yopmail.com'

    def welcome_email(user)
      @user = user
      mail(
        to: @user.email,
        subject: 'Bienvenue chez Trouvetatable',
      )
    end
end
  
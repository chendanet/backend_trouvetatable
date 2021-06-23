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
      @url  = 'https://trouve-ta-table.herokuapp.com/password/reset'
      mail(to: @user.email, subject: 'Bienvenue chez nous !')
    end

    def reservation_confirmation(user)
      @user = User.find(user)
      @url  = 'https://trouve-ta-table.herokuapp.com/profile'
      mail(to: @user.email, subject: 'Votre reservation a bien ete prise en compte!')
    end
end
  
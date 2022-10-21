class UserMailer < ApplicationMailer
    default from: 'gm4vin2techs@gmail.com'
    def acknowledge_mail(user)
       mail(to: user, subject: 'Welcome to My Awesome Site')
    end
end

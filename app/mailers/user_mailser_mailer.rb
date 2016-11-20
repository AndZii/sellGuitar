class UserMailserMailer < ApplicationMailer

    default from: "customer@sellmyguitarnyc.com"

    def send_mail(name,email, phone_number, message)
        @email = email
        @name = name
        @phone_number = phone_number
        @message = message
        mail(to: "zykovwat2008@gmail.com", subject: 'New Customer Message', template_name: 'send_mail' )
        mail(to: "webuygoods@gmail.com", subject: 'New Customer Message', template_name: 'send_mail' )
    end
    
end

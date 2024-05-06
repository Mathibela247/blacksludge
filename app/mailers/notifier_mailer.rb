class NotifierMailer < ApplicationMailer
    def new_account(recipient)
        mail(
            to: recipient,
            subject: "You are invited to the Event"
            )
    end
end

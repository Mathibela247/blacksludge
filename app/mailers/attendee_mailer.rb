class AttendeeMailer < ApplicationMailer
    default from: 'mathibela.johannes@outlook.com'

    def otp_email(attendee)
        @attendee = attendee mail(to: @attendee.email, subject: 'Your OTP (One Time Password)')
    end
end

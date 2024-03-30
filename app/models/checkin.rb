# require 'rotp'

class Checkin < ApplicationRecord
  belongs_to :attendee
  # encrypts :otp_secret
  # before_create :generate_and_send_otp

  private
  
  # def generate_and_send_otp
  #   otp_secret = ROTP::Base32.random
  #   otp = ROTP::TOTP.new(otp_secret)
  #   self.otp_secret = otp_secret
  #   self.otp = otp.now
  #   # totp = ROTP::TOTP.new(otp_secret)
 
  #   # totp.verify(otp.to_s)

  #   #send OTP via email

  #   CheckinMailer.otp_email(self).deliver_now
  # end

end

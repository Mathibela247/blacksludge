class GuestMailer < ApplicationMailer
  default from: 'joe@blacksludge.co.za' # Change to your desired "from" address

  def invite(guest)
    @guest = guest
    @update_link = edit_guest_url(@guest.update_token) # Link to update guest details
    mail(to: @guest.email, subject: 'You are Invited! Update Your Details')
  end
end
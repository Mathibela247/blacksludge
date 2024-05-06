class EventMailer < ApplicationMailer
  default from: 'events@blacksludge.com'

  def invite_email(guest, event)
    @guest = guest
    @event = event
    @update_url = edit_guest_url(@guest)
    mail(to: @guest.email, subject: "You're Invited to #{@event.event_name}!")
  end
end

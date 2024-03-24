class EventMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_mailer.invite.subject
  #
  def invite
    @event = params[:event] 

    @greeting = "Hi"
    calendar_event = Events::IcalendarEvent.new(event: @event).call
    attachments['invite.ics'] = calendar_event
    mail to: "to@example.org",
      subject: @event.event_name
  end
end

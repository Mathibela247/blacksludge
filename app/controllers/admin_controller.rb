class AdminController < ApplicationController
    def send_invites
      @guests = Guest.where(:customer_id => current_user.customer_id, :event_id => session[:event_id]) # Get a list of all guests
      @guests.each do |guest|
        GuestMailer.invite_email(guest).deliver_later # Send the email asynchronously
      end
      redirect_to event_path(session[:event_id]), notice: 'Invitations sent!'
    end
  end
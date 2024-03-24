class InvitationRsvpsController < InheritedResources::Base

  # def new
  #   @invitation_rsvp = InvitationRsvp.new
  #   @event = Event.find(params[:event_id])
  # end

  # def create
  #   @event = Event.find(params[:event_id])
  #   @invitation_rsvp = @event.invitation_rsvps.new(invitation_rsvp_params)

  #   if @invitation_rsvp.save
  #     respond_to do |format|
  #       format.html { redirect_to invitation_rsvps_path }
  #       format.json { render :show, status: :created, location: @invitation_rsvp }
  #     end
  #   end
  # end 

  private
    def set_invitation_rsvp
      @invitation_rsvp = InvitationRsvp.find(params[:id])
      @event = Event.find(@invitation_rsvp.event_id)
    end

    def invitation_rsvp_params
      params.require(:invitation_rsvp).permit(:event_id, :invitation_response_id, :user_id, :customer_id, :dietary_restriction_id)
    end

end

class EventInvitationsController < InheritedResources::Base
  def new
    @event_invitation = EventInvitation.new
    
  end

  def create
    @event_invitation = current_user.event_invitations.build(event_invitation_params)
  
    if @event_invitation.save
      respond_to do |format|
        format.html { redirect_to event_invitations_path, notice: "Event Invitation was successfully created." }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

    def event_invitation_params
      params.require(:event_invitation).permit(:event_id, :user_id, :sent_date, :invitation_response_id, :text_response, :response_date)
    end

end

class InvitationResponsesController < InheritedResources::Base

  private

    def invitation_response_params
      params.require(:invitation_response).permit(:name)
    end

end

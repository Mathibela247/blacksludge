class CheckinsController < InheritedResources::Base

  private

    def checkin_params
      params.require(:checkin).permit(:attendee_id, :checked_in)
    end

end

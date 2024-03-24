class EventStatusesController < InheritedResources::Base

  private

    def event_status_params
      params.require(:event_status).permit(:name)
    end

end

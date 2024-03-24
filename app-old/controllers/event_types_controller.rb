class EventTypesController < InheritedResources::Base

  private

    def event_type_params
      params.require(:event_type).permit(:name)
    end

end

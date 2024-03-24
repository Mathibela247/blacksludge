class PrintsController < InheritedResources::Base
    layout 'attendee'

    def show
        @attendee = Attendee.find(params[:id])
    end

    def index
        @attendee = Attendee.find_by_id(params[:id])
      end
end
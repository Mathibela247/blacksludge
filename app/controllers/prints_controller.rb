class PrintsController < InheritedResources::Base
    layout 'attendee'

    def show
        @checkin = Checkin.joins(:attendee).find(params[:id])
    end

    def index
        @attendee = Attendee.find_by_id(params[:id])
      end
end
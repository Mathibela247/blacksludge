class CheckinAttendeesController < InheritedResources::Base
    layout 'attendee'
    def index
        @checkin = Checkin.all
    end
  
  end
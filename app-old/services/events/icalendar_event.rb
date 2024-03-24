# Events::IcalendarEvent.new(event: Event.first).call
    class Events::IcalendarEvent
        require 'icalendar'
        include Rails.application.routes.url_helpers

        def initialize(event:)
            @event = event
        end

        def call
            cal = Icalendar::Calendar.new
            cal.event do |e|
            e.dtstart     = @event.start_time
            e.dtend       = @event.end_time
            e.summary     = @event.event_name
            e.description = @event.event_type.name
            e.location     = @event.location_address
            e.ip_class    = "PRIVATE"
            e.uid         = @event.id.to_s
            e.sequence    = Time.now.to_i
            e.url         = event_url(@event)
            end

        cal.publish
        cal.to_ical
        end
    end
# end

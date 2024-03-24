module ApplicationHelper
    def print_attendee(pid)
        @attendee = Attendee.where(id: pid)
        render "checkins/print", attendee: @attendee
    end

    def change_background_color
        @sa = SettingAttendee.find_by_customer_id(1)
        if @sa
            @bg_color = @sa.bgcolor
        end
    end

    def headersize
        @sa = SettingAttendee.find_by_customer_id(1)
        if @sa
            @headersize = @sa.h1size
        end
    end

    def change_background_image
        @sa = SettingAttendee.find_by_customer_id(1)
        if @sa
            @bg_image = @sa.bgimage
        end
    end

    def change_logo
        @sa = SettingAttendee.find_by_customer_id(1)
        if @sa
            @logo = @sa.logo
        end    
    end
end

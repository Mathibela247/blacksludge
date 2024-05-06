module ApplicationHelper
    def print_attendee(pid)
        @attendee = Attendee.where(id: pid)
        render "checkins/print", attendee: @attendee
    end

    def change_h1_color
        a = Attendee.first
        @sa = SettingAttendee.find_by_customer_id(a.customer_id)
        if @sa.bgcolor.present?
            @bg_color = @sa.bgcolor
        end
    end

    def headersize
        a = Attendee.first
        @sa = SettingAttendee.find_by_customer_id(a.customer_id)
        if @sa.h1size.present?
            @headersize = @sa.h1size
        end
    end

    def change_background_image
        a = Attendee.first
        @sa = SettingAttendee.find_by_customer_id(a.customer_id)
        if @sa.bgimage.present?
           @bg_image = @sa.bgimage
        end
    end

    def change_logo
        g = Guest.first
        a = Attendee.first
        @sa = SettingAttendee.find_by_customer_id(g.customer_id)
        if @sa.logo.present?
            @logo = @sa.logo
        end  
    end
end

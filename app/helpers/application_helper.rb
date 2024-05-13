module ApplicationHelper
    def print_attendee(pid)
        if user_signed_in? 
            @customer = Customer.where(id: pid)
            render "checkins/print", attendee: @attendee
        end
    end

    def change_h1_color
        if user_signed_in?
            @sa = SettingAttendee.find_by_customer_id(current_user.customer_id)
            if @sa.bgcolor.present?
                @bg_color = @sa.bgcolor
            end
        end
    end

    def headersize
        if user_signed_in?
            @sa = SettingAttendee.find_by_customer_id(current_user.customer_id)
            if @sa.h1size.present?
                @headersize = @sa.h1size
            end
        end
    end

    def change_background_image
        if user_signed_in?
            @sa = SettingAttendee.find_by_customer_id(current_user.customer_id)
            if @sa.bgimage.present?
            @bg_image = @sa.bgimage
            end
        end
    end

    def change_logo
        if user_signed_in?
            @sa = SettingAttendee.find_by_customer_id(current_user.customer_id)
            if @sa.logo.present?
                @logo = @sa.logo
            end  
        end
    end
end

class SettingAttendeesController < InheritedResources::Base
  
  def create
    if SettingAttendee.new
      @setting_attendee = SettingAttendee.create(setting_attendee_params)
      respond_to do |format|
        if @setting_attendee.save
          format.html { redirect_to setting_attendees_path, notice: 'Successfully added Settings for Attendee.' }
          format.json { render :show, status: :created, location: @@setting_attendee}
        else
          format.html { render :new }
          format.json { render json: @@setting_attendee.errors, status: :unprocessable_entity }
        end
      end
    end
  end
  private

    def setting_attendee_params
      params.require(:setting_attendee).permit(:customer_id, :bgcolor, :bgimage, :h1size, :logo, :fontsize)
    end

end

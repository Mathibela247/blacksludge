class AttendeesController < InheritedResources::Base
  def index
    @checkin = Checkin.new
    # @checkin_new = @checkin.build
    @checkins = Checkin.all
    
    if params[:query].present?
      @attendees = Attendee.where("first_name like ? || email like ?", "%#{params[:query]}%","%#{params[:query]}%")
    else
      @checkins.each do |c|
        @attendees = Attendee.where(id: c.attendee_id)
      end  
    end
  end

  def create
    if Attendee.new
      @attendee = Attendee.create(attendee_params)
      respond_to do |format|
        if @attendee.save
          format.html { redirect_to attendees_path, notice: 'Successfully added Attendee.' }
          format.json { render :show, status: :created, location: @@attendee}
        else
          format.html { render :new }
          format.json { render json: @@attendee.errors, status: :unprocessable_entity }
        end
      end
    else
      @checkin = Checkin.build
      respond_to do |format|
        if @checkin.save
          format.html { redirect_to attendees_path, notice: 'Successfully Checked In.' }
          format.json { render :show, status: :created, location: @@attendee}
        else
          format.html { render :new }
          format.json { render json: @@attendee.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  private

    def attendee_params
      params.require(:attendee).permit(:first_name, :last_name, :email, :company, :mobile_number)
    end
    
    def checkin_params
      params.require(:checkin).permit(:attendee_id, :checked_in)
    end

end

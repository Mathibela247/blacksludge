class AttendeesController < InheritedResources::Base
  # before_action :authenticate_user!
  layout 'attendee'

  def show
    @attendee = Attendee.find(params[:id])
  end

  # def attendees
  #   render partial: 'attendees/attendees', locals: { attendees: @attendee }
  # end
  def index
    @checkin = Checkin.new
    # @checkin_new = @checkin.build
    @checkins = Checkin.all
    @total_checkins = Checkin.all.count
    
    if params[:query].present?
      @attendees = Attendee.where("first_name like ? || email like ?", "%#{params[:query]}%","%#{params[:query]}%").left_outer_joins(:checkins).where(checkins: {attendee_id: nil})
    else
      # @checkins.each do |c|
      # if current_user.admin?
        @attendees = Attendee.left_outer_joins(:checkins).where(checkins: {attendee_id: nil})
      # end 
    end

    if turbo_frame_request?
      render partial: "attendees", locals: { attendees: @attendees }
    else
      render :index
    end
  end


  def create
    if Attendee.new
      if params[:csv_file].present?
        attendees_data = 
        params[:csv_file].read
        CSV.parse(attendees_data, headers: true) do |row|
          Attendee.create(first_name: row['first_name'], last_name: row['last_name'], email: row['email'], company: row['company'], mobile_number: row['mobile_number'])
        end
        redirect_to attendees_path, notice: 'Attendees were successfully seeded.'
      else
        @attendee = Attendee.create(attendee_params)
        respond_to do |format|
          if @attendee.save
            format.turbo_stream do
              render turbo_stream: [
                turbo_stream.update('new_attendee', partial: "attendees/form", locals: { attendee: Attendee.new })
              ]
            end
            format.html { redirect_to attendees_path, notice: 'Successfully added Attendee.' }
            format.json { render :show, status: :created, location: @@attendee}
          else
            format.html { render :new }
            format.json { render json: @@attendee.errors, status: :unprocessable_entity }
          end
        end
      end
    end
 
    if @checkin
      @checkin = Checkin.build
      respond_to do |format|
        if @checkin.save
          format.turbo_stream do
            render turbo_stream: turbo_stream.update(
              'New_checkin',
              partial: 'checkins/checkins',
              locals: { checkin: @checkin }
            )
          end
        else
          format.html { render :new }
          format.json { render json: @@attendee.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  private

    def attendee_params
      params.require(:attendee).permit(:first_name, :last_name, :email, :customer_id, :event_id, :mobile_number)
    end
    
    def checkin_params
      params.require(:checkin).permit(:attendee_id, :checked_in)
    end

    def set_attendee
      @attendee = Attendee.find(params[:id])
    end

end

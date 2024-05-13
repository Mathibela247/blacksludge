class EventsController < InheritedResources::Base
  before_action :set_event, only: %i[ show edit update destroy send_invites ]
  layout 'event'
  # def new
  #   @event = Event.new event_params
  # end
  def index
    @events = Event.where(:customer_id => current_user.customer_id)
  end

  def send_invites
    event = Event.find(params[:id])
    event.guests.each do |guest|
      EventMailer.invite_email(guest, event).deliver_later
    end
    redirect_to event_path(event), notice: 'Invitations sent!'
  end

  def show
    @guests = Guest.where(:customer_id => current_user.customer_id, :event_id => session[:event_id])
    @total_guests = @guests.count
    @total_declined = Guest.where(:customer_id => current_user.customer_id, :event_id => session[:event_id],:rsvp_status => "No").count
    @total_confirmed = Guest.where(:customer_id => current_user.customer_id, :event_id => session[:event_id],:rsvp_status => "Yes").count
    @total_unconfirmed = Guest.where(:customer_id => current_user.customer_id, :event_id => session[:event_id],:rsvp_status => nil).count
   
    if params[:query].present?
      @guests = Guest.where("first_name like ? || email like ?", "%#{params[:query]}%","%#{params[:query]}%")
    end

    @event = Event.find(params[:id])
    respond_to do |format|
      format.html
      # format.ics
      format.ics do
        # render plain: @event.to_icalendar
        event_ics = Events::IcalendarEvent.new(event: @event).call
        send_data event_ics , filename: "#{@event.event_name}.ics" 
      end
    end
  end

  def create
    if Guest.new
      event_id = params[:event_id]
      customer_id = params[:customer_id]
      if params[:csv_file].present?
        guests_data = params[:csv_file].read
        CSV.parse(guests_data, headers: true) do |row|
          Guest.create(first_name: row['first_name'], last_name: row['last_name'], email: row['email'], mobile_number: row['mobile_number'], event_id: row[event_id], customer_id: row[customer_id])
        end
          redirect_to event_path(session[:event_id]), notice: 'Guests were successfully seeded.'
      end
    end
    
    @event = current_user.events.build(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to events_path, notice: 'Successfully added event.' }
        format.json { render :show, status: :created, location: @event}
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end

    @guest = Guest.create(guest_params)
      respond_to do |format|
        if @guest.save
          format.turbo_stream do
          render turbo_stream: [
            turbo_stream.update('new_guest', partial: "guests/form", locals: { guest: Guest.new })
          ]
         end
                format.html { redirect_to event_path(session[:event_id]), notice: 'Successfully added Guest.' }
                format.json { render :show, status: :created, location: @@guest}
              else
                format.html { render :new }
                format.json { render json: @@guest.errors, status: :unprocessable_entity }
              end
            end
  end

  private

    def set_event
      @event = current_user.events.find(params[:id])
    end

    def guest_params
      params.require(:guest).permit(:first_name, :last_name, :email, :mobile_number, :event_id, :customer_id)
    end

    def event_params
      params.require(:event).permit(:event_name, :event_url, :event_type_id, :description, :location_name, :location_address, :start_time, :end_time, :customer_id, :user_id, :qrcode)
    end

end

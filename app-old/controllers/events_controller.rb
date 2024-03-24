class EventsController < InheritedResources::Base
  before_action :set_event, only: %i[ show edit update destroy invite ]
  # def new
  #   @event = Event.new event_params
  # end
  def invite
    EventMailer.with(event: @event).invite.deliver_now
    redirect_to @event, notice: 'invite sent'
  end

  def show
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
  end

  private

    def set_event
      @event = current_user.events.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:event_name, :event_url, :event_type_id, :location_name, :location_address, :start_time, :end_time, :customer_id, :user_id, :qrcode)
    end

end

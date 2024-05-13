class GuestsController < InheritedResources::Base
  before_action :set_guest, only: [:show, :update, :update_status]
  layout 'event'

    def show
    end

    def edit
      @guest = Guest.find(params[:id])
    end

    def update
      @guest = Guest.find(params[:id])
      if @guest.update(guest_params)
        
        flash[:notice] = "Your details have been updated successfully.".html_safe
        redirect_to @guest
    
      else
        render :edit
      end
    end

    def update_status
      # Example update logic, e.g., updating the status of an item
      if @guest.update(rsvp_status: params[:rsvp_status])
        flash[:notice] = "RSVP status updated successfully."
      else
        flash[:alert] = "Failed to update RSVP status."
      end
  
      redirect_to declines_index_url # Redirect to a desired location after update
    end

    def create
      if Guest.new
        event_id = params[:event_id]
        customer_id = params[:customer_id]
        if params[:csv_file].present?
          guests_data = params[:csv_file].read
          CSV.parse(guests_data, headers: true) do |row|
            Guest.create(first_name: row['first_name'], last_name: row['last_name'], email: row['email'], mobile_number: row['mobile_number'], event_id: row['event_id'], customer_id: row['customer_id'])
          end
            redirect_to event_path(session[:event_id]), notice: 'Guests were successfully seeded.'
        else
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
      end
    end

  private
    
    def set_guest
      @guest = Guest.find(params[:id])
    end

    def guest_params
      params.require(:guest).permit(:first_name, :last_name, :email, :mobile_number, :event_id, :customer_id, :rsvp_status, :accomodation, :dietary_restriction)
    end

end

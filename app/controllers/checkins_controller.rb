class CheckinsController < InheritedResources::Base
  # before_action :authenticate_user!
  layout 'attendee'

  def show
    @checkin = Checkin.find(params[:id])
  end

  def create
    @checkin = Checkin.new(checkin_params)

    respond_to do |format|
      if @checkin.save
        format.turbo_stream do
          render turbo_stream: turbo_stream.update(
            'New_checkin',
            partial: 'checkins/checkins',
            locals: { checkin: @checkin }
          )
        end
        format.html {redirect_to attendees_path, notice: "Successfully Checked in"}
        # format.turbo_stream { render :create, locals: { checkin: @checkin }}
        format.json { render :show, status: :created, location: @checkin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.turbo_stream { render :new, status: :unprocessable_entity, locals: { checkin: @checkin }}
        format.json { render json: @checkin.errors, status: :unprocessable_entity }
      end
    end
  end


  private

    def checkin_params
      params.require(:checkin).permit(:attendee_id, :checked_in)
    end

end

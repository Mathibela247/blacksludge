class SelfCheckinController < ApplicationController
  protect_from_forgery with: :null_session
  layout 'self_checkin'
  
  def index
    @checkin = Checkin.new
    # @checkin_new = @checkin.build
    @checkins = Checkin.all
    # @checkin = Checkin.all
    if params[:query].present?
      @check_attendee = Attendee.where("first_name like ? || email like ?", "%#{params[:query]}%","%#{params[:query]}%").left_outer_joins(:checkins).where(checkins: {attendee_id: nil})
    end
  end

end

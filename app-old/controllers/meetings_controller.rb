class MeetingsController < InheritedResources::Base
  before_action :authenticate_user!

  def index
    @messages = Message.last(5)
    @message = current_user.messages.build
    @query = Meeting.ransack(params[:q])
    @meetings = @query.result(distinct: true)
  end

  private

    def meeting_params
      params.require(:meeting).permit(:meeting_id, :topic, :meeting_type, :start, :end, :duration, :meeting_url, :agenda, :customer_id)
    end

end

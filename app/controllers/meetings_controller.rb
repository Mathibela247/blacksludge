class MeetingsController < InheritedResources::Base
  before_action :authenticate_user!
  layout 'dashboard'
  
  def index
    @messages = Message.last(5)
    @message = current_user.messages.build
    @query = Meeting.ransack(params[:q])
    @meetings = @query.result(distinct: true)
  end

  def show
    @meeting = Meeting.find(params[:id])
    @messages = Message.last(5)
    @resolutions = Resolution.where(:meeting_id => @meeting)
    @abstain = @resolutions.where(:abstain => true).count
    @agendas = Agenda.where(:meeting_id => @meeting)
    @elections = Election.where(:meeting_id => @meeting)
  end 

  
  

  private

    def meeting_params
      params.require(:meeting).permit(:meeting_id, :topic, :meeting_type, :start, :end, :duration, :meeting_url, :agenda, :customer_id)
    end

end

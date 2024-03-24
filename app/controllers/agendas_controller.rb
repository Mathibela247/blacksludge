class AgendasController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :set_agenda, only: [:show, :edit, :update, :destroy]
  layout 'dashboard'

  def new
    @agenda = Agenda.new(:meeting_id => params[:meeting_id])
  end

  def edit
  end

  def create
    if Agenda.new
      @agenda = Agenda.create(agenda_params)

      respond_to do |format|
        if @agenda.save
          format.html {redirect_to meeting_path(@agenda.meeting_id), notice: "Successfully added a agenda"}
          format.json { render :show, status: :created, location: @agenda }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.turbo_stream { render turbo_stream: turbo_stream.prepend('agendas', partial: 'meetings/meeting', locals: {meeting: @meeting})}
          format.json { render json: @agenda.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @agenda.update(agenda_params)
        format.html { redirect_to @agenda, notice: "Agenda was successfully updated." }
        format.json { render :show, status: :ok, location: @agenda }
      else
        format.html { render :edit }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_agenda
    @agenda = Agenda.find(params[:id])
  end

  def agenda_params
    params.require(:agenda).permit(:item, :meeting_id, :user_id)
  end

end

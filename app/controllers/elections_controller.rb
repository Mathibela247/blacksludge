class ElectionsController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :set_election, only: [:show, :edit, :update, :destroy, :upvote]
  layout 'dashboard'

  def new
    @election = Election.new(:meeting_id => params[:meeting_id])
  end

  def edit
  end

  def create
    
    if Election.new
      @election = Election.create(election_params)

      respond_to do |format|
        if @election.save
          format.html {redirect_to meeting_path(@election.meeting_id), notice: "Successfully added a election"}
          format.json { render :show, status: :created, location: @election }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.turbo_stream { render turbo_stream: turbo_stream.prepend('elections', partial: 'meetings/meeting', locals: {meeting: @meeting})}
          format.json { render json: @election.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @election.update(election_params)
        format.html { redirect_to meeting_path(@election.meeting_id), notice: "Election was successfully updated." }
        format.json { render :show, status: :ok, location: @election }
      else
        format.html { render :edit }
        format.turbo_stream { render turbo_stream: turbo_stream.prepend('elections', partial: 'meetings/meeting', locals: {meeting: @meeting})}
        format.json { render json: @election.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_election
      @election = Election.find(params[:id])
    end

    def election_params
      params.require(:election).permit(:names, :meeting_id, :user_id, :description, :available_seat)
    end

end

class CandidatesController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :set_candidate, only: [:show, :edit, :update, :destroy, :upvote]
  layout 'dashboard'
  
  def new
    @candidate = Candidate.new(:election_id => params[:election_id])
  end

  def edit
  end

  def create
    
    if Candidate.new 
      @candidate = Candidate.create(candidate_params) 
      
      respond_to do |format|
        if @candidate.save
          @election = Election.find_by_id(@candidate.election_id)
          format.html {redirect_to meeting_path(@election.meeting_id), notice: "Successfully added a candidate"}
          format.json { render :show, status: :created, location: @candidate }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.turbo_stream { render turbo_stream: turbo_stream.prepend('candidates', partial: 'meetings/meeting', locals: {meeting: @meeting})}
          format.json { render json: @candidate.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to meeting_path(@election.meeting_id), notice: "Candidate was successfully updated." }
        format.json { render :show, status: :ok, location: @candidate }
      else
        format.html { render :edit }
        format.turbo_stream { render turbo_stream: turbo_stream.prepend('candidates', partial: 'meetings/meeting', locals: {meeting: @meeting})}
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  def upvote
    
    if current_user.voted_up_on? @candidate
      @candidate.unvote_by current_user
    else
      # if @election.available_seat < @candidate.get_upvotes.size
      # @lock = 1
        @candidate.upvote_by current_user
      # end
    end
    redirect_to meeting_path(@election.meeting_id)
    # turbo_stream { render turbo_stream: turbo_stream.prepend('elections', partial: 'meetings/meeting', locals: {meeting: @meeting})}
  end

  private

    def candidate_params
      params.require(:candidate).permit(:name, :open_vote, :candidate_id, :election_id)
    end

    def set_candidate
      @candidate = Candidate.find(params[:id])
      @election = Election.find_by_id(@candidate.election_id)
    end

end

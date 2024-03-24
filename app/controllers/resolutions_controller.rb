class ResolutionsController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :set_resolution, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  layout 'dashboard'

  def new
    @resolution = Resolution.new(:meeting_id => params[:meeting_id])
  end

  def edit
  end

  def create
    
    if Resolution.new
      @resolution = Resolution.create(resolution_params)

      respond_to do |format|
        if @resolution.save
          format.html {redirect_to meeting_path(@resolution.meeting_id), notice: "Successfully added a resolution"}
          format.json { render :show, status: :created, location: @resolution }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.turbo_stream { render turbo_stream: turbo_stream.prepend('resolutions', partial: 'meetings/meeting', locals: {meeting: @meeting})}
          format.json { render json: @resolution.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def update
    if @resolution.abstain == false
      if current_user.voted_up_on? @resolution
        @resolution.unvote_by current_user
      elsif current_user.voted_down_on? @resolution
        @resolution.unvote_by current_user
      end
    end
    respond_to do |format|
      if @resolution.update(resolution_params)
        format.html { redirect_to meeting_path(@resolution.meeting_id), notice: "Resolution was successfully updated." }
        format.json { render :show, status: :ok, location: @resolution }
      else
        format.html { render :edit }
        format.turbo_stream { render turbo_stream: turbo_stream.prepend('resolutions', partial: 'meetings/meeting', locals: {meeting: @meeting})}
        format.json { render json: @resolution.errors, status: :unprocessable_entity }
      end
    end
  end

  def upvote
    if current_user.voted_up_on? @resolution
      @resolution.unvote_by current_user
    else
      @resolution.upvote_by current_user, :vote_weight => current_user.vote_weight
    end
    redirect_to meeting_path(@resolution.meeting_id)
  end
 
  def downvote
    if current_user.voted_down_on? @resolution
      @resolution.unvote_by current_user
    else
      @resolution.downvote_from current_user
    end
    redirect_to meeting_path(@resolution.meeting_id)
  end

  private

    def set_resolution
      @resolution = Resolution.find(params[:id])
    end

    def resolution_params
      params.require(:resolution).permit(:description, :open_voting, :meeting_id, :user_id, :abstain)
    end

end

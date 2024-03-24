class VotingOptionsController < InheritedResources::Base

  private

    def voting_option_params
      params.require(:voting_option).permit(:name)
    end

end

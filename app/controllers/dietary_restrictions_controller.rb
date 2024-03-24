class DietaryRestrictionsController < InheritedResources::Base

  private

    def dietary_restriction_params
      params.require(:dietary_restriction).permit(:name)
    end

end

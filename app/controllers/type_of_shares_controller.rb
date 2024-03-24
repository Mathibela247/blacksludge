class TypeOfSharesController < InheritedResources::Base

  private

    def type_of_share_params
      params.require(:type_of_share).permit(:name)
    end

end

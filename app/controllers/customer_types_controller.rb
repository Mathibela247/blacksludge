class CustomerTypesController < InheritedResources::Base

  private

    def customer_type_params
      params.require(:customer_type).permit(:name, :description)
    end

end

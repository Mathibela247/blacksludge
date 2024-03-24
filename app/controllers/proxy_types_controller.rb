class ProxyTypesController < InheritedResources::Base

  private

    def proxy_type_params
      params.require(:proxy_type).permit(:name)
    end

end

class ProxyInstructionsController < InheritedResources::Base

  private

    def proxy_instruction_params
      params.require(:proxy_instruction).permit(:name)
    end

end

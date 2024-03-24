class SharesController < InheritedResources::Base
  before_action :authenticate_user!
  layout 'dashboard'
  
  private

    def share_params
      params.require(:share).permit(:account_number, :title, :name, :surname, :id_number, :email, :physical_address, :type_of_shares_id, :share_volume, :custom, :notes)
    end

end

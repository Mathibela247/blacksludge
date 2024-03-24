class ProxiesController < InheritedResources::Base
  layout 'attendee'
  before_action :set_proxy, only: [:show, :edit, :update, :destroy]

  def index
    # Normally you'd have more complex requirements about
    # when not to show rows, but we don't show any records that don't have a name
    @proxies = Proxy.where.not(firstname: nil)
  end

  def show
  end

  def new
    @proxy = Proxy.new
  end

  def create
    @proxy = Proxy.new
    @proxy.save(validate: false)
    redirect_to proxy_step_path(@proxy, Proxy.steps.first)
  end

  def destroy
    @proxy.destroy
    respond_to do |format|
      format.html { redirect_to proxies_url }
      format.json { head :no_content }
    end
  end

  private

  def set_proxy
    @proxy = Proxy.find(params[:id])
  end

  def proxy_params
    params.require(:proxy).permit(:firstname, :lastname, :member_number, :proxy_firstname, :proxy_lastname, :proxy_member_number)
  end

end

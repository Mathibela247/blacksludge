class Proxy::StepsController < ApplicationController
  include Wicked::Wizard

  steps(*Proxy.form_steps)

  def show
    @proxy = Proxy.find(params[:proxy_id])
    
    render_wizard
  end

  def update
    @proxy = Proxy.find(params[:proxy_id])
    @proxy.update(proxy_params(step))
    render_wizard @proxy
  end

  # private

  # def proxy_params(step)
  #   permitted_attributes = case step
  #                          when "proxy_giver"
  #                            [:firstname, :lastname, :member_number]
  #                          when "proxy_receiver"
  #                            [:proxy_firstname, :proxy_lastname, :proxy_member_number]
  #                          end
  #   params.require(:proxy).permit(permitted_attributes).merge(form_step: step)
  # end
end

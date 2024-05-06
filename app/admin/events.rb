ActiveAdmin.register Event do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :event_name, :event_url, :description, :event_type, :location_name, :location_address, :customer_id, :start_time, :end_time
  #
  # or
  #
  # permit_params do
  #   permitted = [:event_name, :event_url, :event_type, :location_name, :location_address, :customer_id, :start_time, :end_time]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

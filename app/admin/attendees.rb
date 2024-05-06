ActiveAdmin.register Attendee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :first_name, :last_name, :email, :company, :mobile_number, :customer_id

   form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :company
      f.input :mobile_number
      f.input :customer_id, :as => :select, :collection => Customer.all.collect {|customer| [customer.name, customer.id] }
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :email, :company, :mobile_number]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

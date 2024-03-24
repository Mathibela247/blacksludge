ActiveAdmin.register Election do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :names, :meeting_id, :user_id, :description, :available_seat

   index do
    selectable_column
    id_column
    column :names
    column :description
    column :available_seat
    column :created_at
    column :updated_at
    column :signed_in_at
    actions
  end

  filter :names
  filter :description
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :names
      f.input :description
      f.input :meeting_id, :as => :select, :collection => Meeting.all.collect {|meeting| [meeting.topic, meeting.id] }
      f.input :available_seat
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:names, :meeting_id, :user_id, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

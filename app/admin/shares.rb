ActiveAdmin.register Share do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :account_number, :title, :name, :surname, :id_number, :email, :physical_address, :type_of_shares_id, :share_volume, :custom, :notes
   index do
    selectable_column
    id_column
    column :account_number
    column :title
    column :name
    column :surname
    column :email
    column :physical_address
    column :type_of_shares_id
    column :share_volume
    actions
  end

  filter :account_number
  filter :surname

  form do |f|
    f.inputs do
      f.input :account_number
      f.input :title
      f.input :name
      f.input :surname
      f.input :id_number
      f.input :email
      f.input :physical_address
      f.input :type_of_shares_id, :as => :select, :collection => TypeOfShare.all.collect {|share| [share.name, share.id] }
      f.input :share_volume
      f.input :custom
      f.input :notes
    end
    f.actions
  end
   #
  # or
  #
  # permit_params do
  #   permitted = [:account_number, :title, :name, :surname, :id_number, :email, :physical_address, :type_of_shares_id, :share_volume, :custom, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

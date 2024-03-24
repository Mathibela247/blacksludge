ActiveAdmin.register User do
  permit_params :email, :first_name, :last_name, :customer_id, :role_id, :vote_weight

  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :customer.name
    column :role.name
    column :vote_weight
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :customer_id, :as => :select, :collection => Customer.all.collect {|product| [product.name, product.id] }
      f.input :role_id, :as => :select, collection: Role.all.collect {|r| [r.name, r.id] }
      f.input :vote_weight
    end
    f.actions
  end

end

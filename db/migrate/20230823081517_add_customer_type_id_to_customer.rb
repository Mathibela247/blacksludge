class AddCustomerTypeIdToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :customer_type_id, :integer
  end
end

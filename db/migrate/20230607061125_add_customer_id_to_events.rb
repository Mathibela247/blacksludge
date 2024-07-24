class AddCustomerIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :customer_id, :integer
  end
end

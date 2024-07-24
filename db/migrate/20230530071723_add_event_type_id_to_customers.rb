class AddEventTypeIdToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :event_type_id, :integer
  end
end

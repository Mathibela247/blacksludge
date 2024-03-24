class RemoveEventTypeIdFromCustomers < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :event_type_id, :integer
  end
end

class AddCustomerIdToAttendees < ActiveRecord::Migration[7.0]
  def change
    add_column :attendees, :customer_id, :integer
  end
end

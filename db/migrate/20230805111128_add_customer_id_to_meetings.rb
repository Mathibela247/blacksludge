class AddCustomerIdToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :customer_id, :integer
  end
end

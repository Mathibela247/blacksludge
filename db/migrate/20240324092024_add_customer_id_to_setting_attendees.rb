class AddCustomerIdToSettingAttendees < ActiveRecord::Migration[7.0]
  def change
    add_column :setting_attendees, :customer_id, :integer
  end
end

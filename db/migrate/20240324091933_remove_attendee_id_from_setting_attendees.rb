class RemoveAttendeeIdFromSettingAttendees < ActiveRecord::Migration[7.0]
  def change
    remove_column :setting_attendees, :attendee_id, :integer
  end
end

class AddAttendeeIdToCheckin < ActiveRecord::Migration[7.0]
  def change
    add_column :checkins, :attendee_id, :integer
  end
end

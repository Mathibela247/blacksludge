class AddColumnsToAttendee < ActiveRecord::Migration[7.0]
  def change
    add_column :attendees, :otp, :string
    add_column :attendees, :checked_in, :boolean
  end
end

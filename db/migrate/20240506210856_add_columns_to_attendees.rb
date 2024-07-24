class AddColumnsToAttendees < ActiveRecord::Migration[7.0]
  def change
    add_column :attendees, :event_id, :integer
    add_column :attendees, :dietary_restriction, :string
    add_column :attendees, :accomodation, :string
  end
end

class AddDietaryRestrictionIdToAttendee < ActiveRecord::Migration[7.0]
  def change
    add_column :attendees, :dietary_restriction_id, :integer
  end
end

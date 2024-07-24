class RemoveDietaryRestrictionFromAttendees < ActiveRecord::Migration[7.0]
  def change
    remove_column :attendees, :dietary_restriction, :string
  end
end

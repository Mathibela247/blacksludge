class AddRsvpStatusToGuests < ActiveRecord::Migration[7.0]
  def change
    add_column :guests, :rsvp_status, :string
  end
end

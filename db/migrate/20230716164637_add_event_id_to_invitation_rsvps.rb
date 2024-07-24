class AddEventIdToInvitationRsvps < ActiveRecord::Migration[7.0]
  def change
    add_column :invitation_rsvps, :event_id, :integer
  end
end

class RemoveColumnsFromAttendees < ActiveRecord::Migration[7.0]
  def change
    remove_column :attendees, :company, :string
    remove_column :attendees, :invitation_token, :string
    remove_column :attendees, :invitation_created_at, :string
    remove_column :attendees, :invitation_sent_at, :string
    remove_column :attendees, :invitation_accepted_at, :string
    remove_column :attendees, :invitation_limit, :string
    remove_column :attendees, :invited_by_type, :string
    remove_column :attendees, :invited_by_id, :string
    remove_column :attendees, :invitations_count, :string
  end
end

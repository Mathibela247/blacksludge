class CreateEventInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :event_invitations do |t|
      t.integer :event_id
      t.integer :user_id
      t.datetime :sent_date
      t.integer :invitation_response_id
      t.string :text_response
      t.datetime :response_date

      t.timestamps
    end
  end
end

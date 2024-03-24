class CreateInvitationRsvps < ActiveRecord::Migration[7.0]
  def change
    create_table :invitation_rsvps do |t|
      t.integer :invitation_response_id
      t.integer :user_id
      t.integer :customer_id
      t.integer :dietary_restriction_id

      t.timestamps
    end
  end
end

class CreateInvitationResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :invitation_responses do |t|
      t.string :name

      t.timestamps
    end
  end
end

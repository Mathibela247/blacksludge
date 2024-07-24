class AddEventIdToEmailTemplate < ActiveRecord::Migration[7.0]
  def change
    add_column :email_templates, :event_id, :integer
  end
end

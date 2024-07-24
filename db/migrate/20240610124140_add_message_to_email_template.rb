class AddMessageToEmailTemplate < ActiveRecord::Migration[7.0]
  def change
    add_column :email_templates, :message, :text
  end
end

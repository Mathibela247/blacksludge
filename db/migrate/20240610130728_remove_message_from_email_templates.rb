class RemoveMessageFromEmailTemplates < ActiveRecord::Migration[7.0]
  def change
    remove_column :email_templates, :message, :text
  end
end

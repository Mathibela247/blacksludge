class AddFontColorToEmailTemplate < ActiveRecord::Migration[7.0]
  def change
    add_column :email_templates, :font_color, :string
  end
end

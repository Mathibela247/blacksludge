class CreateEmailTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :email_templates do |t|
      t.string :background_color
      t.string :font_size

      t.timestamps
    end
  end
end

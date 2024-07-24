class AddH5ColorToEmailTemplate < ActiveRecord::Migration[7.0]
  def change
    add_column :email_templates, :h5_color, :string
  end
end

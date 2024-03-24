class AddDescriptionToElections < ActiveRecord::Migration[7.0]
  def change
    add_column :elections, :description, :string
  end
end

class AddGroupIdToGuests < ActiveRecord::Migration[7.0]
  def change
    add_column :guests, :group_id, :integer
  end
end

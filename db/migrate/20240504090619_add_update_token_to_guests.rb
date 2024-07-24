class AddUpdateTokenToGuests < ActiveRecord::Migration[7.0]
  def change
    add_column :guests, :update_token, :string
    add_index :guests, :update_token, unique: true
  end
end

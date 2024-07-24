class AddDietaryRestrictionToGuests < ActiveRecord::Migration[7.0]
  def change
    add_column :guests, :dietary_restriction, :string
  end
end

class RemoveDietaryRestrictionFromGuests < ActiveRecord::Migration[7.0]
  def change
    remove_column :guests, :dietary_restriction, :string
  end
end

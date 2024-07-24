class AddDietaryRestrictionIdToGuest < ActiveRecord::Migration[7.0]
  def change
    add_column :guests, :dietary_restriction_id, :integer
  end
end

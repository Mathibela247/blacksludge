class AddAccomodationToGuests < ActiveRecord::Migration[7.0]
  def change
    add_column :guests, :accomodation, :string
  end
end

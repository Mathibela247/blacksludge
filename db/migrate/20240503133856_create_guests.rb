class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile_number
      t.integer :event_id
      t.integer :customer_id

      t.timestamps
    end
  end
end

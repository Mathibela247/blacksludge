class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_url
      t.string :event_type
      t.string :location_name
      t.string :location_address
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end

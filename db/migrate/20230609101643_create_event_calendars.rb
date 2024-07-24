class CreateEventCalendars < ActiveRecord::Migration[7.0]
  def self.up
    create_table :event_calendars do |t|
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      
      t.timestamps
    end
  end

  def self.down
    drop_table :event_calendars
  end
end

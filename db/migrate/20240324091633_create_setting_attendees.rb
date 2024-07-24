class CreateSettingAttendees < ActiveRecord::Migration[7.0]
  def change
    create_table :setting_attendees do |t|
      t.references :attendee, null: false, foreign_key: true
      t.string :bgcolor
      t.string :bgimage
      t.string :h1size
      t.string :logo
      t.string :fontsize

      t.timestamps
    end
  end
end

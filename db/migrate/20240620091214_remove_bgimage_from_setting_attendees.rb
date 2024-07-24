class RemoveBgimageFromSettingAttendees < ActiveRecord::Migration[7.0]
  def change
    remove_column :setting_attendees, :bgimage, :string
  end
end

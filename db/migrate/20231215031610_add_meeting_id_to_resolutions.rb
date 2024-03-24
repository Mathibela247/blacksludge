class AddMeetingIdToResolutions < ActiveRecord::Migration[7.0]
  def change
    add_column :resolutions, :meeting_id, :integer
  end
end

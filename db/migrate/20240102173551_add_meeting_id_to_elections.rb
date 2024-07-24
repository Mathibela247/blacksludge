class AddMeetingIdToElections < ActiveRecord::Migration[7.0]
  def change
    add_column :elections, :meeting_id, :integer
  end
end

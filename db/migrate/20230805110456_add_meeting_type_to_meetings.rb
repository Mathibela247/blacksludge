class AddMeetingTypeToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :meeting_type, :string
  end
end

class AddDurationToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :duration, :integer
  end
end

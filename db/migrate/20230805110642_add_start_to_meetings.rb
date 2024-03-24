class AddStartToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :start, :datetime
  end
end

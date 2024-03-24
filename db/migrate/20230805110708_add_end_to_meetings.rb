class AddEndToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :end, :datetime
  end
end

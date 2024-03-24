class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.string :meeting_id

      t.timestamps
    end
  end
end

class AddTopicToMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :meetings, :topic, :string
  end
end

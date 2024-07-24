class RemoveEventTypeFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :event_type, :string
  end
end

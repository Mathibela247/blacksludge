class AddDescriptionToEventTypes < ActiveRecord::Migration[7.0]
  def change
    add_column :event_types, :description, :text
  end
end

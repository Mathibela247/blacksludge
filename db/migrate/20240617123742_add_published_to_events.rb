class AddPublishedToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :published, :string
  end
end

class AddUserIdToResolutions < ActiveRecord::Migration[7.0]
  def change
    add_column :resolutions, :user_id, :integer
  end
end

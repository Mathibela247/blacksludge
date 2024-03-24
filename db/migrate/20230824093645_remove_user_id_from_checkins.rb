class RemoveUserIdFromCheckins < ActiveRecord::Migration[7.0]
  def change
    remove_column :checkins, :user_id, :integer
  end
end

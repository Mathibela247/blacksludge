class AddUserIdToElections < ActiveRecord::Migration[7.0]
  def change
    add_column :elections, :user_id, :integer
  end
end

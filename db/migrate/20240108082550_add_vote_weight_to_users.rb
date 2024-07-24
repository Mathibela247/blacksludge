class AddVoteWeightToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :vote_weight, :integer
  end
end

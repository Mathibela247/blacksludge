class AddElectionIdToVotes < ActiveRecord::Migration[7.0]
  def change
    add_column :votes, :election_id, :integer
  end
end

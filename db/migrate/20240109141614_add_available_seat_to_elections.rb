class AddAvailableSeatToElections < ActiveRecord::Migration[7.0]
  def change
    add_column :elections, :available_seat, :integer
  end
end

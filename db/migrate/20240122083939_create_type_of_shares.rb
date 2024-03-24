class CreateTypeOfShares < ActiveRecord::Migration[7.0]
  def change
    create_table :type_of_shares do |t|
      t.string :name

      t.timestamps
    end
  end
end

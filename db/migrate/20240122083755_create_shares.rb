class CreateShares < ActiveRecord::Migration[7.0]
  def change
    create_table :shares do |t|
      t.string :account_number
      t.string :title
      t.string :name
      t.string :surname
      t.string :id_number
      t.string :email
      t.text :physical_address
      t.integer :type_of_shares_id
      t.integer :share_volume
      t.string :custom
      t.text :notes

      t.timestamps
    end
  end
end

class CreateCheckins < ActiveRecord::Migration[7.0]
  def change
    create_table :checkins do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :checked_in

      t.timestamps
    end
  end
end

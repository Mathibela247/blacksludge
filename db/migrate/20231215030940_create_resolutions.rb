class CreateResolutions < ActiveRecord::Migration[7.0]
  def change
    create_table :resolutions do |t|
      t.text :description
      t.boolean :open_voting
      t.string :status

      t.timestamps
    end
  end
end

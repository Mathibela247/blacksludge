class CreateProxyInstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :proxy_instructions do |t|
      t.string :name

      t.timestamps
    end
  end
end

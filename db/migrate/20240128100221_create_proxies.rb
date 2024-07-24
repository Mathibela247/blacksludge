class CreateProxies < ActiveRecord::Migration[7.0]
  def change
    create_table :proxies do |t|
      t.string :firstname
      t.string :lastname
      t.string :member_number
      t.integer :proxy_type_id
      t.string :proxy_firstname
      t.string :proxy_lastname
      t.string :proxy_member_number
      t.integer :proxy_instruction_id

      t.timestamps
    end
  end
end

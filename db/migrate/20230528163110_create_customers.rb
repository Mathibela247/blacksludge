class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :landline
      t.string :mobile
      t.integer :industry_id
      t.string :company_registration
      t.string :vat_number
      t.string :purpose_of_application
      t.string :main_contact
      t.string :person_responsible_for_payment
      t.string :platform_requirements

      t.timestamps
    end
  end
end

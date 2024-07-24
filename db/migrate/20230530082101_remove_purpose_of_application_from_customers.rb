class RemovePurposeOfApplicationFromCustomers < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :purpose_of_application, :string
  end
end

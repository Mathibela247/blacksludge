class AddPackageIdToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :package_id, :integer
  end
end

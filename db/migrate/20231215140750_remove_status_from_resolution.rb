class RemoveStatusFromResolution < ActiveRecord::Migration[7.0]
  def change
    remove_column :resolutions, :status, :string
  end
end

class AddAbstainToResolution < ActiveRecord::Migration[7.0]
  def change
    add_column :resolutions, :abstain, :boolean
  end
end

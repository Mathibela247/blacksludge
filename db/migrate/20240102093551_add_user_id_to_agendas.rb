class AddUserIdToAgendas < ActiveRecord::Migration[7.0]
  def change
    add_column :agendas, :user_id, :integer
  end
end

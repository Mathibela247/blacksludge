class CreateAgendas < ActiveRecord::Migration[7.0]
  def change
    create_table :agendas do |t|
      t.string :item
      t.integer :meeting_id

      t.timestamps
    end
  end
end

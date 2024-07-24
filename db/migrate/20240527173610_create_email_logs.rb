class CreateEmailLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :email_logs do |t|
      t.references :guest, null: false, foreign_key: true
      t.string :status
      t.datetime :sent_at
      t.datetime :received_at
      t.datetime :opened_at

      t.timestamps
    end
  end
end

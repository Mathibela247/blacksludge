class AddOtpToCheckins < ActiveRecord::Migration[7.0]
  def change
    add_column :checkins, :otp, :string
  end
end

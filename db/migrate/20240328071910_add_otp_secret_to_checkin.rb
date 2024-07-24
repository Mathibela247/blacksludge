class AddOtpSecretToCheckin < ActiveRecord::Migration[7.0]
  def change
    add_column :checkins, :otp_secret, :string
  end
end

class RemoveOtpSecretFromCheckins < ActiveRecord::Migration[7.0]
  def change
    remove_column :checkins, :otp_secret, :string
  end
end

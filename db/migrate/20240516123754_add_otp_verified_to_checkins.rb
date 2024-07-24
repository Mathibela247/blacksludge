class AddOtpVerifiedToCheckins < ActiveRecord::Migration[7.0]
  def change
    add_column :checkins, :otp_verified, :boolean
  end
end

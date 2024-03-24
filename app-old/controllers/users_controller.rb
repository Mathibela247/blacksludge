class UsersController < InheritedResources::Base

  def new
    @user = User.new user_params
  end

  private

    def user_params
      params.fetch(:user, {}).permit(:country, :state, :city, :email, :first_name, :last_name, :identity_number, :customer_id, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :created_at, :updated_at, :role, :customer_id)
      # params.require(:user).permit(:email, :first_name, :last_name, :identity_number, :customer_id, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :created_at, :updated_at, :role_id)
    end

end

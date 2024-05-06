class UsersController < InheritedResources::Base
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to after_signups_path(:confirm_profile)
    else
      render :new
    end
  end

  private

    def user_params
      params.fetch(:user, {}).permit(:country, :state, :city, :email, :first_name, :last_name, :identity_number, :customer_id, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :created_at, :updated_at, :role, :customer_id, :vote_weight)
      # params.require(:user).permit(:email, :first_name, :last_name, :identity_number, :customer_id, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :created_at, :updated_at, :role_id)
    end

end

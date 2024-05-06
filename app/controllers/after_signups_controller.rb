class AfterSignupsController < ApplicationController
    include Wicked::Wizard
    steps :confirm_profile, :confirm_address, :final_step

    def show
        @user = current_user
        render_wizard
    end

    def update
        @user = current_user
        params.permit!
        @user.attributes = params[:user]
        render_wizard @user
    end
      
private

    def finish_wizard_path
        # user_path(current_user)
        redirect_to events_path, notice: "Thank you for signing up."
    end
end

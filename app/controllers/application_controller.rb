class ApplicationController < ActionController::Base
    # before_action :authenticate_user!
    before_action :set_query
    before_action :turbo_frame_request_variant

    def set_query
        @query = Meeting.ransack(params[:q])
    end

    private
    def turbo_frame_request_variant
        request.variant = :turbo_frame if turbo_frame_request?
    end
end

class ApplicationController < ActionController::Base
    before_action :set_auth

    def set_auth
        @user_id = session[:user_id]
        @logged_in = !!@user_id
        if @logged_in
            @current_user = User.find(@user_id)
        end
    end
end

class AuthController < ApplicationController

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            flash[:message] = "Hi, #{@user.name}!"
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
           flash[:message] = "Invalid Username or Password."
            redirect_to new_auth_path
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to dinner_parties_path
    end

end

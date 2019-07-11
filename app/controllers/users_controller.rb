class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to dinner_parties_path
    else
      redirect_to new_user_path
    end
  end



  def edit
  end

  def show
    #byebug
    @parties_attending = @current_user.dinner_parties
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :name)
  end
end

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to dinner_parties_path
    else
      redirect_to new_user_path
    end
  end



  def edit
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :name)
  end
end

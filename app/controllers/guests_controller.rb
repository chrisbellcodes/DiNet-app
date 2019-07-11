class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
   #@dinner =  @current_user.guests.create(guest_params)
   @guest = Guest.create(guest_params)
   redirect_to user_path(@current_user)
  end

  def edit

  end

  def update

  end

  def destroy
    #byebug
    Guest.find(params[:id]).destroy
    redirect_to user_path(@current_user.id)
  end

  private

  def guest_params
    params.require(:guest).permit(:user_id, :dinner_party_id, :dish)
  end
end

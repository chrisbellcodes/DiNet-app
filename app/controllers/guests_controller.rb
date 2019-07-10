class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(guest_params)
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private

  def guest_params
    params.require(:guest).permit(:user_id, :dinner_party_id, :dish)
  end
end

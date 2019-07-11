class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
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

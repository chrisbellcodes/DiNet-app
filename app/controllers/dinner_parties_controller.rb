class DinnerPartiesController < ApplicationController
  def new
    @dinner = DinnerParty.new
    @users = User.all
  end

  def create
    @dinner = DinnerParty.create(dinner_params)

    redirect_to dinner_party_path(@dinner)
  end

  def edit

  end

  def index

  end

  def show

  end

  private
  def dinner_params
    params.require(:dinner_party).permit(:user_id, :date, :location, :start_time, :end_time, :theme, :name, :description)
  end

  def find_dinner
    @dinner = Dinner.find(params[:id])
  end
end

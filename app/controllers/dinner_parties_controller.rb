class DinnerPartiesController < ApplicationController


  def new
    @dinner = DinnerParty.new
  end

  def create
    # byebug
    @dinner = @current_user.hosted_parties.create(dinner_params)

    redirect_to dinner_party_path(@dinner)
  end

  def index
    @dinners = DinnerParty.all
  end

  def show
      #if @current_user == find_dinner
      #  find_dinner
      #end
      @dinner = DinnerParty.find(params[:id])

  end

  def edit
    find_dinner
  end

  def update
    @dinner = @current_user.hosted_parties.update(dinner_params)
    redirect_to dinner_party_path(@dinner)
  end

  def destroy
     find_dinner.destroy
     redirect_to user_path(@current_user)
  end

  private
  def dinner_params
    params.require(:dinner_party).permit(:user_id, :date, :location, :start_time, :end_time, :theme, :name, :description)
  end

  def find_dinner
    @dinner = @current_user.hosted_parties.find(params[:id])
  end
end

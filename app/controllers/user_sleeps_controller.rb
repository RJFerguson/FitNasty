class UserSleepsController < ApplicationController
  before_action :authorize_user

  def new
    @sleep = UserSleep.new
    @user = current_user
  end

  def create
    @sleep = UserSleep.new(user_id: current_user.id, duration: sleep_params[:duration], sleep_date: sleep_params[:sleep_date])
    @sleep.calories = @sleep.calories_burned
    @user = current_user
    if @sleep.save
      @user.current_weight(-@sleep.calories)
      redirect_to user_sleep_path(@sleep)
    else
      redirect_to new_user_sleep_path
    end
  end

  def show
    @sleep = UserSleep.find(params[:id])
  end

  private

  def sleep_params
    params.require(:user_sleep).permit(:duration, :sleep_date)
  end

end

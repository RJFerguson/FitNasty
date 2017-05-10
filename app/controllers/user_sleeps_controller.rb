class UserSleepsController < ApplicationController
  before_action :authorize_user

  def new
    @sleep = UserSleep.new
  end

  def create
    @sleep = UserSleep.new(sleep_params)

    @sleep.user_id = User.find_by(id: session[:user_id]).id
    @sleep.calories = @sleep.calories_burned
    if @sleep.save
      redirect_to user_sleep_path(@sleep)
    else
      redirect_to user_sleep_path
    end
  end

  private

  def sleep_params
    params.require(:user_sleep).permit(:user_id, :duration, :sleep_date)
  end

end
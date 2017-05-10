class UserSleepsController < ApplicationController
  before_action :authorize_user

  def new
    @sleep = UserSleep.new
  end

  def create
    byebug
    @sleep = UserSleep.new(sleep_params)
    @sleep.user_id = current_user.id
    @sleep.calories = @sleep.calories_burned

    if @sleep.save
      redirect_to user_sleep_path(@sleep)
    else
      redirect_to new_user_sleep_path
    end
  end

  def show
    # @user = User.find_by(id: session[:user_id])
    @sleep = UserSleep.find(params[:id])
  end

  private

  def sleep_params
    params.require(:user_sleep).permit(:duration, :sleep_date)
  end

end

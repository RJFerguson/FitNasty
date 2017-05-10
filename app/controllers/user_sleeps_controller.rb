class UserSleepsController < ApplicationController
  before_action :authorize_user

  def new
    @sleep = UserSleep.new
  end

  def create
    @user_sleep = UserSleep.new(sleep_params)

    @user_sleep.user_id = User.find_by(id: session[:user_id]).id
    @user_sleep.calories = @user_sleep.calories_burned
    byebug
    if @user_sleep.save
      redirect_to user_sleep_path
    else
      redirect_to new_user_sleep_path
    end
  end

  def show
    @user = User.find_by(id: session[:user_id]) 
    @sleep = UserSleep.find(params[:id])
  end 

  private

  def sleep_params
    params.require(:user_sleep).permit(:duration, :sleep_date)
  end

end
class UserSleepsController < ApplicationController
  before_action :authorize_user

  def new
    @user_sleep = Usersleep.new
    @user_sleep.user_id = @cureent_user.id 
    @user_sleep.sleep_id = Sleep.last.id 
  end

  def create
    usersleep = Usersleep.new(sleep_params)

    if usersleep.save
      redirect_to usersleep.user
    end
  end

  private

  def sleep_params
    params.require(:appearance).permit(:user_id, :sleep_id)
  end

end
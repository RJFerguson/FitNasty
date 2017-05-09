class SleepsController < ApplicationController

  def new
    @sleep = Sleep.new
  end

  def create
    @sleep = Sleep.new(sleep_params)
    @sleep.calories = @sleep.calories_burned

    if @sleep.save
      redirect_to profile_path(current_user)
    else
      redirect_to new_sleep_path
    end
  end

  def edit
    @exercise = Exercise.find(:id)  #or is it current_user.sleeps.find(:id)
  end

  def update
    @sleep = Sleep.find(:id)  #or is it current_user.sleeps.find(:id)

    if @sleep.save
      @sleep.update(sleep_params)
      redirect_to profile_path
    else
      redirect_to edit_sleep_path
    end
  end

  def destroy
    @sleep = Sleep.find(:id)  #or is it current_user.sleeps.find(:id)

    Sleep.destroy(@sleep.id)
  end

  private

  def sleep_params
    params.require(:sleep).permit(:sleep_date, :duration)
  end

end

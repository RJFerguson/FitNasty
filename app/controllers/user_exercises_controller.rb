class UserExercisesController < ApplicationController

  def new
    @exercise = UserExercise.new
    @user = current_user
    # byebug
  end

  def create
    @exercise = UserExercise.new(exercise_params)
    @user = User.find_by(id: session[:user_id])
    @exercise.user_id = @user.id
    @exercise.calories = @exercise.calories_burned
    if @exercise.save
      @user.current_weight(@exercise.calories)
      redirect_to user_exercise_path(@exercise)
    else
      redirect_to new_user_exercise_path
    end
  end

  def show
    @exercise = UserExercise.find(params[:id])
  end

  def edit
    @exercise = Exercise.find(:id)  #or is it current_user.exercises.find(:id)
  end

  def update
    @exercise = Exercise.find(:id)  #or is it current_user.exercises.find(:id)

    if @exercise.save
      @exercise.update(exercise_params)
      redirect_to profile_path
    else
      redirect_to edit_exercise_path
    end
  end

  def destroy
    @exercise = Exercise.find(:id)  #or is it current_user.exercises.find(:id)

    Exercise.destroy(@exercise.id)
  end

  private
  def exercise_params
    params.require(:user_exercise).permit(:exercise_id, :duration, :date_completed)
  end
end

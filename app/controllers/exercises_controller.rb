class ExercisesController < ApplicationController

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @exercise.calories = @exercise.calories_burned

    if @exercise.save
      redirect_to profile_path(current_user)
    else
      redirect_to new_exercise_path
    end
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
    params.require(:exercise).permit(:duration, :activity, :intensity_level, :date_completed)
  end
end

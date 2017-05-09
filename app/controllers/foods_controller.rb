class FoodsController < ApplicationController

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.calories = @food.caloric_intake

    if @food.save
      redirect_to profile_path(current_user)
    else
      redirect_to new_food_path
    end
  end

  private

  def food_params
    params.require(:food).permit(:item, :date_eat)
  end
end

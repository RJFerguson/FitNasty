class FoodsController < ApplicationController

  def new
    @food = UserFood.new
    @newfood = Food.new
  end

  def create
    @food = UserFood.new(user_id: current_user.id, date_eat: user_food_params[:date_eat])
    @newfood = Food.find_or_initialize_by(food_params)
    @user = current_user
    @food.calories = @newfood.caloric_intake(@newfood.item)

    if @newfood.save
      @food.food_id = @newfood.id
      @user.current_weight(@food.calories)
      @food.save
      redirect_to food_path(@food)
    else
      redirect_to new_food_path
    end
  end

  def show
    @food = UserFood.find(params[:id])
  end

  private

  def food_params
    params.require(:food).permit(:item)
  end

  def user_food_params
    params.require(:user_food).permit(:date_eat)
  end
end

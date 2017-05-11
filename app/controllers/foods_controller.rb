class FoodsController < ApplicationController

  def new
    @food = UserFood.new
    @newfood = Food.new
    @user = current_user
  end

  def create
    @food = UserFood.new(user_id: current_user.id, date_eat: user_food_params[:date_eat])
    @newfood = Food.find_or_initialize_by(food_params)
    @user = current_user
    @newfood.calories = @newfood.caloric_intake(@newfood.item).to_i
    @newfood.serving_size = @newfood.serving_size(@newfood.item)
  if @newfood.save
      @food.food_id = @newfood.id
      @food.save
      redirect_to edit_food_path(@food)
    else
      redirect_to new_food_path
    end
  end

  def edit
    @userfood = UserFood.find(params[:id])
    @food = Food.find(@userfood.food_id)
    @serving_size = @food.serving_size(@food.item)
  end

  def update
     @userfood = UserFood.find(params[:id])
     @food = Food.find(@userfood.food_id)
     @user = current_user
     @userfood.calories = @food.calories * params[:user_food][:user_serving].to_i
     @userfood.user_serving = params[:user_food][:user_serving].to_i
     if @userfood.save
      @userfood.save
      @user.current_weight(@userfood.calories)
      redirect_to food_path(@userfood)
    else
      redirect_to edit_food_path(@userfood)
    end
  end

  def show
    @food = UserFood.find(params[:id])
    @user = current_user
  end

  private

  def food_params
    params.require(:food).permit(:item)
  end

  def user_food_params
    params.require(:user_food).permit(:date_eat)
  end
end

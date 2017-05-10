class FoodsController < ApplicationController

  def new
    @food = Food.new
  end

  def create
    @food = Food.find_or_initialize_by(food_params)
    @eaten = UserFood.new(user_id: current_user.id, date_eat: DateTime.parse(Time.now.to_s).strftime("%Y-%m-%d"))
    @user = current_user

    @eaten.calories = @food.caloric_intake(@food.item)

    if @food.save
      @eaten["food_id"] = @food.id
      @eaten.save
      @user.current_weight(@eaten.calories)
      redirect_to profile_path(current_user)
    else
      redirect_to new_food_path
    end
  end

  private

  def food_params
    params.require(:food).permit(:item)
  end
end

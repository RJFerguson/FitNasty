class Food < ApplicationRecord
  has_many :user_foods
  has_many :users, through: :user_foods

  def food_check(query)
   foods = FatSecret::Food.search("#{query}")
   food = foods.first.description
   food
  end

  def caloric_intake
    eaten_food = food_check(query)
  end

  def total_calories
    foods_eaten_today = Food.group(:date_eat).where(:date_eat == Date.now)
    foods_eaten_today.sum(&:calories)
  end
end

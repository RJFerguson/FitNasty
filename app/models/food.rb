class Food < ApplicationRecord
  has_many :user_foods
  has_many :users, through: :user_foods

  def food_check(query)
    foods = FatSecret::Food.search("#{query}") 
    food = foods.first.description
    food
  end

  def caloric_intake(food)
    eaten_food = food_check(food)
    eaten_food.split(" | ").first.split(" - ").last.split(": ").last.gsub("kcal", "")
  end
end

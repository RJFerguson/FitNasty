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

  def serving_size(food)
    eaten_food = food_check(food)
    eaten_food.split(" | ").first.split(" - ").first.split[1..2].join(" ")
  end

end

class User < ApplicationRecord
  has_secure_password

  has_many :user_sleeps
  has_many :sleeps, through: :user_sleeps

  has_many :user_exercises
  has_many :exercises, through: :user_exercises

  has_many :user_foods
  has_many :foods, through: :user_foods

  def net_calories
    self.food.total_calories - (self.sleep.calories + self.exercise.total_calories)
  end

  def current_weight
      curr_weight = self.user_weights.last.weight + (self.net_calories/3500)

      User_Weight.create(weight: curr_weight, day: Date.now, user_id: self.id)
  end
end

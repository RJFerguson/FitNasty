class User < ApplicationRecord
  has_secure_password

  has_many :user_sleeps
  has_many :sleeps, through: :user_sleeps

  has_many :user_exercises
  has_many :exercises, through: :user_exercises

  has_many :user_foods
  has_many :foods, through: :user_foods

  has_many :user_weights

  def total_calories_eaten
    foods_eaten_today = UserFood.where(user_id: self.id, date_eat: DateTime.parse(Time.now.to_s).strftime("%Y-%m-%d"))
    foods_eaten_today.sum(&:calories)
  end

  def net_calories
    self.food.total_calories - (self.sleep.calories + self.exercise.total_calories)
  end

  def current_weight
      curr_weight = self.user_weights.last.weight + (self.net_calories/3500)
      User_Weight.create(weight: curr_weight, day: Date.now, user_id: self.id)
  end

end

class Exercise < ApplicationRecord
  has_many :user_exercises
  has_many :users, through: :user_exercises

  # def calories_burned
  #   if current_user.gender == 'Woman'
  #     [(current_user.age * 0.074) — (current_user.current_weight * 0.05741) + (self.heart_rate * 0.4472) — 20.4022] * self.duration / 4.184
  #   else current_user.gender == 'Man'
  #     [(current_user.age * 0.2017) — (current_user.current_weight * 0.09036) + (self.heart_rate * 0.6309) — 55.0969] * self.duration / 4.184
  #   end
  # end
end

class Sleep < ApplicationRecord
  has_many :user_sleeps
  has_many :users, through: :user_sleeps

  def calories_burned
    sleep_met = 0.9
    sleep_met * (self.user.current_weight * 0.453592) * self.duration
  end

  #methods
  # instance methods


  #classMethods
  #find out your progress in comparison to your friends
end

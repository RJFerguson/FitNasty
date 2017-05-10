class UserSleep < ApplicationRecord
	belongs_to :user
	belongs_to :sleep

	def calories_burned
    sleep_met = 0.9
    sleep_met * (self.user.current_weight * 0.453592) * self.duration
  end

end

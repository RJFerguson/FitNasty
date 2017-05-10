class UserSleep < ApplicationRecord
	belongs_to :user

def calories_burned
    sleep_met = 0.9
    sleep_met * (self.user.show_weight * 0.453592) * self.duration
  end

end

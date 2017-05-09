class UserExercise < ApplicationRecord
	belongs_to :user
	belongs_to :exercise

  def calories_burned
  	cm = self.user.height * 2.54 #convert from inches to cm
  	kilo = self.user.start_weight * 0.453592 #convert from pounds to kilos
  	age = self.user.age
    if self.user.gender == 'Woman'
    	bmr = (9.56 * kilo) + (1.85 * cm) - (4.68 * age) + 655 
    	(bmr / 24 * self.duration * self.exercise.met).to_f
    elsif self.user.gender == "Male"
    	bmr = (13.75 * kilo) + (5 * cm) - (6.76 * age) + 66 
    	(bmr / 24 * self.duration * self.exercise.met).to_f
    end
  end


end

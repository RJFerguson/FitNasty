class User < ApplicationRecord
  has_secure_password

  has_many :user_sleeps

  has_many :user_exercises
  has_many :exercises, through: :user_exercises

  has_many :user_foods
  has_many :foods, through: :user_foods

  has_many :user_weights

  def total_calories_eaten
    foods_eaten_today = UserFood.where(user_id: self.id, date_eat: DateTime.parse(Time.now.to_s).strftime("%Y-%m-%d"))
    foods_eaten_today.sum(&:calories)
  end

  def total_calories_burned
    exercises = UserExercise.where(user_id: self.id, date_completed: DateTime.parse(Time.now.to_s).strftime("%Y-%m-%d"))
    sleeping = UserSleep.where(user_id: self.id, sleep_date: DateTime.parse(Time.now.to_s).strftime("%Y-%m-%d"))

    exercises.sum(&:calories) + sleeping.sum(&:calories)
  end

  def net_calories
    self.total_calories_eaten - (self.total_calories_burned)
  end

  def current_weight(calories)
    if self.user_weights.last == nil
      curr_weight = self.start_weight + calories/3500
      UserWeight.create(user_id: self.id, day: DateTime.parse(Time.now.to_s).strftime("%Y-%m-%d"), weight: curr_weight)
    else
      curr_weight = self.user_weights.last.weight + calories/3500
      UserWeight.create(user_id: self.id, day: DateTime.parse(Time.now.to_s).strftime("%Y-%m-%d"), weight: curr_weight)
  end
end

  def show_weight
    if self.user_weights.last == nil
      self.start_weight
    else
    self.user_weights.last.weight
  end
end


  def current_progress
    if self.start_weight.to_f < self.goal_weight.to_f
      if ((self.show_weight.to_f - self.start_weight.to_f) / (self.goal_weight.to_f - self.start_weight.to_f)) < 0
        0
      else
        (self.show_weight.to_f - self.start_weight.to_f) / (self.goal_weight.to_f - self.start_weight.to_f)
      end
    else
      if ((self.start_weight.to_f - self.show_weight.to_f) / (self.start_weight.to_f - self.goal_weight.to_f)) < 0
        0
      else
        (self.start_weight.to_f - self.show_weight.to_f) / (self.start_weight.to_f - self.goal_weight.to_f)
      end
    end
  end

  def progress_projection
    activity_projection = {}
    cdate = self.start_date

    until activity_projection.keys.last == self.goal_date
      activity_projection[cdate + 1] = 0
      cdate += 1
    end

    weight = self.start_weight
    activity_projection.map do |k,v|
      activity_projection[k] = (weight + ((self.goal_weight.to_f - self.start_weight.to_f) / (self.goal_date - self.start_date).to_i)
      weight += ((self.goal_weight.to_f - self.start_weight.to_f) / (self.goal_date - self.start_date).to_i)).round(2)
    end

    activity_projection
  end

  def progress_in_action
    actual_progress = {}

    self.user_weights.each { |weight| actual_progress[weight.day] = 0 }

    actual_progress.map do |k, v|
      actual_progress[k] = UserWeight.where(user_id: self.id, day: k).last.weight
    end

    actual_progress
  end

  def progress_message
    today_projection = self.progress_projection[DateTime.parse(Time.now.to_s).strftime("%Y-%m-%d").to_date]
    today_progress = self.progress_in_action[DateTime.parse(Time.now.to_s).strftime("%Y-%m-%d").to_date]

    if self.goal_weight < self.start_weight #losing weight
      if (today_projection - today_progress) < 0
        "Try HARDER! You are #{(((today_projection - today_progress) / today_projection) * 100).round(1)}% below plan!"
      else
        "GREAT job! You are #{(((today_projection - today_progress) / today_projection) * 100).round(1)}% above plan!"
      end
    else
      if (today_progress - today_projection) < 0 #gaining weight
        "Try HARDER! You are #{(((today_progress - today_projection) / today_projection) * 100).round(1)}% below plan!"
      else
        "GREAT job! You are #{(((today_progress - today_projection) / today_projection) * 100).round(1)}% above plan!"
      end
    end
  end

  private

  def day_end_totals
    User_Weight.create(user_id: self.id,
    day: DateTime.parse(Time.now.to_s).strftime("%Y-%m-%d"),
    daily_weight: self.end_day_weight,
    daily_calories_burned: self.end_day_calories_burned,
    daily_sleep_duration: UserSleep.where(user_id: self.id, sleep_date: DateTime.parse(Time.now.to_s).strftime("%Y-%m-%d")).sum(&:duration)
    )
  end

end

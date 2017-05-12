#Seed Exercises

# hash(activity => met)

exercise_type = {
  	"Walking - Slow (1-2 miles/hour)" => 2,
  	"Walking - Moderate (2-3 miles/hour)" => 3,
  	"Walking - Fast (3-4 miles/hour)" => 3.5,
  	"Biking - Leisurely (<10 miles/hour)" => 4,
		"Weight Lifting" => 4, 
  	"Dancing " => 5,
		"Cleaning Gutters" => 5,
  	"Jogging - Slow (~3 miles/hour)" => 6,
  	"Hiking" => 6.5,
  	"Rowing" => 7,
  	"Jogging - Moderate (~5 miles/hour)" => 8,
  	"Biking - Moderate (10-16 miles/hour)" => 8,
  	"Swimming" => 8,
		"Heavy Farming Work" => 8,
  	"Tennis/Squash/Racquetball" => 9.5,
  	"Running - Slow (6 miles/hour)" => 10,
  	"Running - Moderate (8 miles/hour)" => 13.5,
  	"Running - Moderate (10 miles/hour)" => 16
  }


  exercise_type.each do |k,v|
  	Exercise.create(activity: k, met: v)
  	# byebug
  end

  #Seed Users

  User.create(name: 'Mary', age: 18, height: 70, gender: 'Woman', start_weight: 150, goal_weight: 130, start_date: '2017-05-01', goal_date: '2017-06-01', password: 'bears')
  User.create(name: 'Jack', age: 25, height: 75, gender: 'Man', start_weight: 200, goal_weight: 185, start_date: '2017-05-09', goal_date: '2017-08-01', password: 'clowns')
  User.create(name: 'Sasha', age: 28, height: 60, gender: 'Woman', start_weight: 140, goal_weight: 135, start_date: '2017-05-09', goal_date: '2017-06-10', password: 'lanterns')
  User.create(name: 'John', age: 34, height: 69, gender: 'Man', start_weight: 220, goal_weight: 200, start_date: '2017-05-09', goal_date: '2017-6-10', password: 'flatbelly')
  User.create(name: 'Sue', age: 44, height: 64, gender: 'Woman', start_weight: 135, goal_weight: 130, start_date: '2017-05-09', goal_date: '2017-07-10', password: 'beastmode')
  User.create(name: 'Harry', age: 54, height: 68, gender: 'Man', start_weight: 120, goal_weight: 140, start_date: '2017-05-09', goal_date: '2017-09-01', password: 'fitlikegoku')
  User.create(name: 'Keisha', age: 60, height: 67, gender: 'Woman', start_weight: 110, goal_weight: 120, start_date: '2017-01-01', goal_date: '2017-04-01' , password: 'tiredtime')
  User.create(name: 'Shawn', age: 31, height: 66, gender: 'Man', start_weight: 155, goal_weight: 145, start_date: '2017-01-01', goal_date: '2017-05-28', password: 'meep')
  User.create(name: 'Janie', age: 27, height: 71, gender: 'Woman', start_weight: 120, goal_weight: 140, start_date: '2017-01-01', goal_date: '2017-06-01', password: 'badpassword')
  User.create(name: 'Rick', age: 40, height: 63, gender: 'Man', start_weight: 110, goal_weight: 130, start_date: '2017-01-01', goal_date: '2017-06-01', password: 'jacknife')

	#Seed Food

	Food.create(item: 'Steak', calories: 201, serving_size: "100g")
	Food.create(item: 'Milk', calories: 50, serving_size: "100g")
	Food.create(item: 'Apple', calories: 52, serving_size: "100g")
	Food.create(item: 'Pasta', calories: 158, serving_size: "101g")
	Food.create(item: 'Tomato', calories: 18, serving_size: "100g")
	Food.create(item: 'Tuna', calories: 116, serving_size: "100g")


	#Seed UserFood



	UserFood.create(user_id: 1, food_id: 1, calories: 201, user_serving: 1 ,date_eat: "2017-05-01")
	UserFood.create(user_id: 1, food_id: 2, calories: 50, user_serving: 1 ,date_eat: "2017-05-01")
	UserFood.create(user_id: 1, food_id: 3, calories: 52, user_serving: 1 ,date_eat: "2017-05-01")
	UserFood.create(user_id: 1, food_id: 4, calories: 158, user_serving: 1 ,date_eat: "2017-05-01")
	UserFood.create(user_id: 1, food_id: 5, calories: 18, user_serving: 1 ,date_eat: "2017-05-02")
	UserFood.create(user_id: 1, food_id: 6, calories: 116, user_serving: 1 ,date_eat: "2017-05-02")
	UserFood.create(user_id: 1, food_id: 1, calories: 201, user_serving: 1 ,date_eat: "2017-05-02")
	UserFood.create(user_id: 1, food_id: 2, calories: 50,  user_serving: 1 ,date_eat: "2017-05-02")
	UserFood.create(user_id: 1, food_id: 3, calories: 52,  user_serving: 1 ,date_eat: "2017-05-02")
	UserFood.create(user_id: 1, food_id: 4, calories: 158,  user_serving: 1 ,date_eat: "2017-05-03")
	UserFood.create(user_id: 1, food_id: 5, calories: 18,  user_serving: 1 ,date_eat: "2017-05-03")
	UserFood.create(user_id: 1, food_id: 6, calories: 116,  user_serving: 1 ,date_eat: "2017-05-03")
	UserFood.create(user_id: 1, food_id: 1, calories: 201,  user_serving: 1 ,date_eat: "2017-05-03")
	UserFood.create(user_id: 1, food_id: 2, calories: 50,  user_serving: 1 ,date_eat: "2017-05-04")
	UserFood.create(user_id: 1, food_id: 3, calories: 52,  user_serving: 1 ,date_eat: "2017-05-04")
	UserFood.create(user_id: 1, food_id: 4, calories: 158,  user_serving: 1 ,date_eat: "2017-05-04")
	UserFood.create(user_id: 1, food_id: 5, calories: 18,  user_serving: 1 ,date_eat: "2017-05-05")
	UserFood.create(user_id: 1, food_id: 6, calories: 116,  user_serving: 1 ,date_eat: "2017-05-05")
	UserFood.create(user_id: 1, food_id: 1, calories: 201,  user_serving: 1 ,date_eat: "2017-05-05")
	UserFood.create(user_id: 1, food_id: 2, calories: 50,  user_serving: 1 ,date_eat: "2017-05-06")
	UserFood.create(user_id: 1, food_id: 3, calories: 52,  user_serving: 1 ,date_eat: "2017-05-06")
	UserFood.create(user_id: 1, food_id: 4, calories: 158,  user_serving: 1 ,date_eat: "2017-05-07")
	UserFood.create(user_id: 1, food_id: 5, calories: 18,  user_serving: 1 ,date_eat: "2017-05-07")
	UserFood.create(user_id: 1, food_id: 6, calories: 116,  user_serving: 1 ,date_eat: "2017-05-07")
  UserFood.create(user_id: 1, food_id: 6, calories: 116,  user_serving: 1 ,date_eat: "2017-05-08")
  UserFood.create(user_id: 1, food_id: 5, calories: 18,  user_serving: 1 ,date_eat: "2017-05-08")
  UserFood.create(user_id: 1, food_id: 4, calories: 158,  user_serving: 1 ,date_eat: "2017-05-08")
  UserFood.create(user_id: 1, food_id: 3, calories: 52,  user_serving: 1 ,date_eat: "2017-05-08")
  UserFood.create(user_id: 1, food_id: 1, calories: 201,  user_serving: 1 ,date_eat: "2017-05-08")
  UserFood.create(user_id: 1, food_id: 4, calories: 158,  user_serving: 1 ,date_eat: "2017-05-09")
  UserFood.create(user_id: 1, food_id: 3, calories: 52,  user_serving: 1 ,date_eat: "2017-05-09")
  UserFood.create(user_id: 1, food_id: 1, calories: 201,  user_serving: 1 ,date_eat: "2017-05-09")
	UserFood.create(user_id: 1, food_id: 5, calories: 18,  user_serving: 1 ,date_eat: "2017-05-10")
	UserFood.create(user_id: 1, food_id: 6, calories: 116,  user_serving: 1 ,date_eat: "2017-05-10")
	UserFood.create(user_id: 1, food_id: 1, calories: 201,  user_serving: 1 ,date_eat: "2017-05-10")
	UserFood.create(user_id: 1, food_id: 5, calories: 18,  user_serving: 2 ,date_eat: "2017-05-11")
	UserFood.create(user_id: 1, food_id: 6, calories: 116,  user_serving: 1 ,date_eat: "2017-05-11")
	UserFood.create(user_id: 1, food_id: 1, calories: 201,  user_serving: 2 ,date_eat: "2017-05-11")
	UserFood.create(user_id: 1, food_id: 5, calories: 18,  user_serving: 2 ,date_eat: "2017-05-12")
	UserFood.create(user_id: 1, food_id: 6, calories: 116,  user_serving: 1 ,date_eat: "2017-05-12")
	UserFood.create(user_id: 1, food_id: 1, calories: 201,  user_serving: 2 ,date_eat: "2017-05-12")

	#seed UserSleep

  UserSleep.create(user_id: 1, calories: 340, duration: 5, sleep_date: "2017-05-01")
  UserSleep.create(user_id: 1, calories: 544, duration: 8, sleep_date: "2017-05-02")
  UserSleep.create(user_id: 1, calories: 680, duration: 10, sleep_date: "2017-05-03")
  UserSleep.create(user_id: 1, calories: 544, duration: 8, sleep_date: "2017-05-04")
  UserSleep.create(user_id: 1, calories: 544, duration: 8, sleep_date: "2017-05-05")
  UserSleep.create(user_id: 1, calories: 816, duration: 12, sleep_date: "2017-05-06")
  UserSleep.create(user_id: 1, calories: 544, duration: 8, sleep_date: "2017-05-07")
  UserSleep.create(user_id: 1, calories: 544, duration: 8, sleep_date: "2017-05-08")
  UserSleep.create(user_id: 1, calories: 544, duration: 8, sleep_date: "2017-05-09")
  UserSleep.create(user_id: 1, calories: 612, duration: 9, sleep_date: "2017-05-10")
  UserSleep.create(user_id: 1, calories: 544, duration: 8, sleep_date: "2017-05-11")
	UserSleep.create(user_id: 1, calories: 544, duration: 8, sleep_date: "2017-05-12")

	#seed UserExercise 

	UserExercise.create(user_id: 1, exercise_id: 12, duration: 1, calories: 516, date_completed: "2017-05-01" )
	UserExercise.create(user_id: 1, exercise_id: 13, duration: 2, calories: 1033, date_completed: "2017-05-02" )
	UserExercise.create(user_id: 1, exercise_id: 14, duration: 3, calories: 1550, date_completed: "2017-05-03" )
	UserExercise.create(user_id: 1, exercise_id: 15, duration: 2, calories: 1227, date_completed: "2017-05-04" )
	UserExercise.create(user_id: 1, exercise_id: 16, duration: 3, calories: 1937, date_completed: "2017-05-05" )
	UserExercise.create(user_id: 1, exercise_id: 9, duration: 2, calories: 839, date_completed: "2017-05-06" )
	UserExercise.create(user_id: 1, exercise_id: 16, duration: 1, calories: 871, date_completed: "2017-05-07" )
	UserExercise.create(user_id: 1, exercise_id: 10, duration: 2, calories: 904, date_completed: "2017-05-08" )
	UserExercise.create(user_id: 1, exercise_id: 11, duration: 3, calories: 1550, date_completed: "2017-05-09" )
	UserExercise.create(user_id: 1, exercise_id: 11, duration: 2, calories: 1033, date_completed: "2017-05-10" )
	UserExercise.create(user_id: 1, exercise_id: 7, duration: 5, calories: 1614, date_completed: "2017-05-11" )
	UserExercise.create(user_id: 1, exercise_id: 7, duration: 5, calories: 1614, date_completed: "2017-05-12" )

	seed_date = User.first.start_date
	mary = User.first

	until seed_date == "2017-05-13".to_date 
		food = (UserFood.where(user_id: mary.id, date_eat: seed_date)).sum(&:calories)
		exercise = (UserExercise.where(user_id: mary.id, date_completed: seed_date)).sum(&:calories)
		sleep = (UserSleep.where(user_id: mary.id, sleep_date: seed_date)).sum(&:calories)
		net_calories = food - exercise - sleep

		if mary.user_weights.last == nil
      curr_weight = mary.start_weight + net_calories/3500
			UserWeight.create(user_id: mary.id, day: seed_date, weight: curr_weight)
    else
      curr_weight = mary.user_weights.last.weight + net_calories/3500
			UserWeight.create(user_id: mary.id, day: seed_date, weight: curr_weight)
  	end

		seed_date =	seed_date + 1 

	end 
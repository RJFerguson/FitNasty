#Seed Exercises

# hash(activity => met)

exercise_type = {
  	"Walking - Slow (1-2 miles/hour)" => 2,
  	"Walking - Moderate (2-3 miles/hour)" => 3,
  	"Walking - Fast (3-4 miles/hour)" => 3.5,
  	"Biking - Leisurely (<10 miles/hour)" => 4,
  	"Dancing " => 5,
  	"Jogging - Slow (~3 miles/hour)" => 6,
  	"Hiking" => 6.5,
  	"Rowing" => 7,
  	"Jogging - Moderate (~5 miles/hour)" => 8,
  	"Biking - Moderate (10-16 miles/hour)" => 8,
  	"Swimming" => 8,
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

  User.create(name: 'Mary', age: 18, height: 70, gender: 'Woman', start_weight: 150, goal_weight: 130, start_date: '2017-05-09', goal_date: '2017-07-01', password: 'bears')
  User.create(name: 'Jack', age: 25, height: 75, gender: 'Male', start_weight: 200, goal_weight: 185, start_date: '2017-05-09', goal_date: '2017-08-01', password: 'clowns')
  User.create(name: 'Sasha', age: 28, height: 60, gender: 'Woman', start_weight: 140, goal_weight: 135, start_date: '2017-05-09', goal_date: '2017-06-10', password: 'lanterns')
  User.create(name: 'John', age: 34, height: 69, gender: 'Male', start_weight: 220, goal_weight: 200, start_date: '2017-05-09', goal_date: '2017-6-10', password: 'flatbelly')
  User.create(name: 'Sue', age: 44, height: 64, gender: 'Woman', start_weight: 135, goal_weight: 130, start_date: '2017-05-09', goal_date: '2017-07-10', password: 'beastmode')
  User.create(name: 'Harry', age: 54, height: 68, gender: 'Male', start_weight: 120, goal_weight: 140, start_date: '2017-05-09', goal_date: '2017-09-01', password: 'fitlikegoku')
  User.create(name: 'Keisha', age: 60, height: 67, gender: 'Woman', start_weight: 110, goal_weight: 120, start_date: '2017-01-01', goal_date: '2017-04-01' , password: 'tiredtime')
  User.create(name: 'Shawn', age: 31, height: 66, gender: 'Male', start_weight: 155, goal_weight: 145, start_date: '2017-01-01', goal_date: '2017-05-28', password: 'meep')
  User.create(name: 'Janie', age: 27, height: 71, gender: 'Woman', start_weight: 120, goal_weight: 140, start_date: '2017-01-01', goal_date: '2017-06-01', password: 'badpassword')
  User.create(name: 'Rick', age: 40, height: 63, gender: 'Male', start_weight: 110, goal_weight: 130, start_date: '2017-01-01', goal_date: '2017-06-01', password: 'jacknife')

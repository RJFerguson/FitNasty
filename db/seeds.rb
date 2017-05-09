# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

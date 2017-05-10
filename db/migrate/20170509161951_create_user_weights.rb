class CreateUserWeights < ActiveRecord::Migration[5.1]
  def change
    create_table :user_weights do |t|
      t.integer :user_id
      t.date :day
      t.integer :daily_weight
      t.integer :daily_calories_burned
      t.integer :daily_sleep_duration

      t.timestamps
    end
  end
end

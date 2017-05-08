class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.integer :duration
      t.string :activity
      t.integer :intensity_level
      t.date :date_completed
      t.integer :calories

      t.timestamps
    end
  end
end

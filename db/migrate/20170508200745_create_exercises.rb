class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :activity
      t.float :met
      
      t.timestamps
    end
  end
end

class CreateUserFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :user_foods do |t|
      t.integer :user_id
      t.integer :food_id
      t.integer :calories
      t.integer :user_serving
      t.date :date_eat

      t.timestamps
    end
  end
end

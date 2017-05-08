class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :start_weight
      t.string :gender
      t.integer :goal_weight
      t.date :goal_date
      t.date :start_date
      t.string :password_digest

      t.timestamps
    end
  end
end

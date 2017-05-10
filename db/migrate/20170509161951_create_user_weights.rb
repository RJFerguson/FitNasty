class CreateUserWeights < ActiveRecord::Migration[5.1]
  def change
    create_table :user_weights do |t|
      t.integer :user_id
      t.date :day
      t.integer :weight
      t.timestamps
    end
  end
end

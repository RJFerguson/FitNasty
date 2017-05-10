class CreateUserSleeps < ActiveRecord::Migration[5.1]
  def change
    create_table :user_sleeps do |t|
      t.integer :user_id
      t.integer :calories
      t.integer :duration
      t.date :sleep_date

      t.timestamps
    end
  end
end

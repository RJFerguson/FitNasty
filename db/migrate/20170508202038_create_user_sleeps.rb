class CreateUserSleeps < ActiveRecord::Migration[5.1]
  def change
    create_table :user_sleeps do |t|
      t.integer :user_id
      t.integer :sleep_id

      t.timestamps
    end
  end
end

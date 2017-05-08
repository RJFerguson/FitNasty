class CreateSleeps < ActiveRecord::Migration[5.1]
  def change
    create_table :sleeps do |t|
      t.date :sleep_date
      t.integer :duration
      t.integer :calories

      t.timestamps
    end
  end
end

class AddSleepDateToUserSleeps < ActiveRecord::Migration[5.1]
  def change
    add_column :user_sleeps, :sleep_date, :date
  end
end

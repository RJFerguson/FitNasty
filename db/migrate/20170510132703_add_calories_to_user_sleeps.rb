class AddCaloriesToUserSleeps < ActiveRecord::Migration[5.1]
  def change
    add_column :user_sleeps, :calories, :integer
  end
end

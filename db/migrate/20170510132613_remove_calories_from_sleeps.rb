class RemoveCaloriesFromSleeps < ActiveRecord::Migration[5.1]
  def change
    remove_column :sleeps, :calories, :integer
  end
end

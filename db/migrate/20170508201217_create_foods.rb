class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :item
      t.integer :calories
      t.date :date_eat

      t.timestamps
    end
  end
end

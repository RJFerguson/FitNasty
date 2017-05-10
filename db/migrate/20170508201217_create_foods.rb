class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :item
      t.string :serving_size
      t.integer :calories
      t.timestamps
    end
  end
end

class CreateMealLists < ActiveRecord::Migration
  def change
    create_table :meal_lists do |t|
      t.integer :meal_id
      t.integer :franchise_id
      t.integer :zipcode
      t.timestamps
    end
  end
end

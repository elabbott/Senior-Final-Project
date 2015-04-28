class CreatePurchaseMeals < ActiveRecord::Migration
  def change
    create_table :purchase_meals do |t|
      t.integer :parent_id
      t.integer :school_id
      t.integer :child_id
      t.boolean :paid
      t.integer :order_id
      t.integer :franchise_id
      t.date    :date_for_meal
      t.integer :meal_id
      t.timestamps
    end
  end
end

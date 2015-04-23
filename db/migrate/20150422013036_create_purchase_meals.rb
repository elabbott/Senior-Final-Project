class CreatePurchaseMeals < ActiveRecord::Migration
  def change
    create_table :purchase_meals do |t|
      t.integer :parent_id
      t.integer :school_id
      t.integer :child_id
      t.boolean :paid
      t.integer :order_id
      
      t.timestamps
    end
  end
end

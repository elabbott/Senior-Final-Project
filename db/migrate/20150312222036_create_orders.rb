class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :price
      t.integer :parent_id
      t.integer :child_id
      t.text :pay_type
      t.boolean :complete
      t.boolean :feedback_flag
      t.text :feedback
      t.integer :franchise_id
      t.date :date_for_meal
      t.timestamps
    end
  end
end

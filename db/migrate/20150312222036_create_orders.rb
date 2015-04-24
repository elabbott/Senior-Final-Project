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
      t.timestamps
    end
  end
end

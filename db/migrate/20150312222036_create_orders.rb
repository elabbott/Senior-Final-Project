class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :price
      t.integer :user_id
      t.integer :pay_type

      t.timestamps
    end
  end
end

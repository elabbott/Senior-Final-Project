class CreatePaymentInfos < ActiveRecord::Migration
  def change
    create_table :payment_infos do |t|
      t.text :name
      t.text :c_type
      t.integer :cnum
      t.date :expdate
      t.integer :cvv
      t.integer :order_id
      t.integer :parent_id
      t.integer :child_id

      t.timestamps
    end
  end
end

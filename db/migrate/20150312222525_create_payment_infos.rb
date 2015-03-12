class CreatePaymentInfos < ActiveRecord::Migration
  def change
    create_table :payment_infos do |t|
      t.string :name
      t.integer :c_type
      t.integer :cnum
      t.date :expdate
      t.integer :cvv

      t.timestamps
    end
  end
end

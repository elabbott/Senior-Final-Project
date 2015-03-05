class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.text :name
      t.integer :school_id
      t.integer :user_id
      t.integer :meal_id

      t.timestamps
    end
  end
end

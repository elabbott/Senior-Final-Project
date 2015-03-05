class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.text :name
      t.text :address
      t.integer :school_id
      t.integer :user_id
      t.integer :meal_id

      t.timestamps
    end
  end
end

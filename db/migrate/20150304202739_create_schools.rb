class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.text :name
      t.integer :zipcode
      t.integer :user_id
      t.integer :meal_id
      t.integer :school_id
      t.timestamps
    end
  end
end

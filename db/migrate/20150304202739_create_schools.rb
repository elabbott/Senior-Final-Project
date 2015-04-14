class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.text :name
      t.integer :zipcode
      t.integer :user_id
      t.integer :meal_id # take out?
      t.integer :school_id #take out?
      t.timestamps
    end
  end
end

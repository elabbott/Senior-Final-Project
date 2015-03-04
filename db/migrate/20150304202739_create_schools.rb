class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.text :name
      t.text :address
      t.integer :school_id
      t.string :user_id
      t.string :meal_id

      t.timestamps
    end
  end
end

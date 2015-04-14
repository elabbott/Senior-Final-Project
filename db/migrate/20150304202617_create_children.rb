class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.text :name
      t.integer :school_id # connects thme to school
      t.integer :user_id	# connects them to a user account
      t.integer :meal_id	# might need to change how this one works // take it out 

      t.timestamps
    end
  end
end

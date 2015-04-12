class CreateFranchises < ActiveRecord::Migration
  def change
    create_table :franchises do |t|
      t.integer :zipcode
      t.integer :school_id
      t.integer :user_id
      t.boolean :approved
      t.timestamps
    end
  end
end

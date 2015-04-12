class CreateFranchises < ActiveRecord::Migration
  def change
    create_table :franchises do |t|
      t.integer :school_id
      t.integer :user_id
      t.integer :zipcode
      t.boolean :approved, default: false
      t.timestamps
    end
  end
end

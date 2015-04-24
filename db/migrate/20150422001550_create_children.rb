class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.text :name
      t.date :dob
      t.integer :parent_id
      t.integer :school_id
      t.boolean :approved, default: false
      
      t.timestamps
    end
  end
end

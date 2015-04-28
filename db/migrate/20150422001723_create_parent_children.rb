class CreateParentChildren < ActiveRecord::Migration
  def change
    create_table :parent_children do |t|
      t.integer :child_id
      t.integer :parent_id
      t.timestamps
    end
  end
end

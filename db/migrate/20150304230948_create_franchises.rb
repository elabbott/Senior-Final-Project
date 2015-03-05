class CreateFranchises < ActiveRecord::Migration
  def change
    create_table :franchises do |t|
      t.string :email
      t.string :encrypted_password
      t.text :address
      t.integer :school_id

      t.timestamps
    end
  end
end

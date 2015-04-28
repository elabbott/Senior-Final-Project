class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description
      t.float :calories
      t.decimal :price
      t.string :image_url

      t.timestamps
    end
  end
end

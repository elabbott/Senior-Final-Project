class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :f_type
      t.string :title
      t.string :descr
      t.date :date_submitted

      t.timestamps
    end
  end
end

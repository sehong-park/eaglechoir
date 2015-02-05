class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :title
      t.integer :index

      t.timestamps null: false
    end
  end
end

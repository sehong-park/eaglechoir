class DropScores < ActiveRecord::Migration
  def change
    drop_table :scores
  end
end

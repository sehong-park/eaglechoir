class CreateHymns < ActiveRecord::Migration
  def change
    create_table :hymns do |t|
      t.string :title
      t.string :index

      t.timestamps null: false
    end
  end
end

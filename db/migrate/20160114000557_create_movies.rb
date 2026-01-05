class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.string :synopsis
      t.string :pic_url

      t.timestamps null: false
    end
  end
end

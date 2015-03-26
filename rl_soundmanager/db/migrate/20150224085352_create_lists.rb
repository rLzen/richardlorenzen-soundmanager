class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :artist_name
      t.string :album_name
      t.string :song_name
      t.string :format
      t.time :length
      t.string :size
      

      t.timestamps null: false
    end

  end
end

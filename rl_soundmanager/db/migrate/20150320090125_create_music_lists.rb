class CreateMusicLists < ActiveRecord::Migration
  def change
    create_table :music_lists do |t|
      t.string :name
      t.string :artist
      t.string :album
      t.string :song
      t.string :format
      t.time :length
      t.string :size
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

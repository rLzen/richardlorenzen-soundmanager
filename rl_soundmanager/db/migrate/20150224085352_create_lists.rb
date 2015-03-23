class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :artist_name
      t.string :album_name
      t.string :song_name
      t.string :format
      t.time :length
      t.integer :size
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :lists, :users
    add_index :lists, [:user_id, :created_at]
  end
end

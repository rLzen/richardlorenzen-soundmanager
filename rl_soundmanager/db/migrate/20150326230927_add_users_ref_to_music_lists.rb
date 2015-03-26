class AddUsersRefToMusicLists < ActiveRecord::Migration
  def change
    add_reference :music_lists, :users, index: true
    add_foreign_key :music_lists, :users
  end
end

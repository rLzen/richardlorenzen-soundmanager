
class CreateCollectionLists < ActiveRecord::Migration
  def change
    create_table :collection_lists do |t|
      t.string :name
      t.string :format
      t.time :length
      t.integer :size
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :collection_lists, :users
  end
end

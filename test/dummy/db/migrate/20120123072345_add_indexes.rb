class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :balder_albums, :id, :unique => true
    add_index :balder_collections, :id, :unique => true
    add_index :balder_photos, :id, :unique => true
    add_index :balder_tags, :id, :unique => true

    add_index :balder_collection_albums, :collection_id
    add_index :balder_collection_albums, :album_id
    add_index :balder_photos, :album_id
    add_index :balder_photo_tags, :tag_id
    add_index :balder_photo_tags, :photo_id
  end

  def self.down
    remove_index :balder_albums, :id
    remove_index :balder_collections, :id
    remove_index :balder_photos, :id
    remove_index :balder_tags, :id

    remove_index :balder_collection_albums, :collection_id
    remove_index :balder_collection_albums, :album_id
    remove_index :balder_photos, :album_id
    remove_index :balder_photo_tags, :tag_id
    remove_index :balder_photo_tags, :photo_id
  end
end

class CreateCollectionAlbums < ActiveRecord::Migration
  def self.up
    create_table :balder_collection_albums do |t|
      t.references :collection
      t.references :album

      t.timestamps
    end
  end

  def self.down
    drop_table :balder_collection_albums
  end
end

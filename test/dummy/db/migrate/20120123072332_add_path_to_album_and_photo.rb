class AddPathToAlbumAndPhoto < ActiveRecord::Migration
  def self.up
    add_column :balder_albums, :path, :text
    add_column :balder_photos, :path, :text
  end

  def self.down
    remove_column :balder_albums, :path
    remove_column :balder_photos, :path
  end
end

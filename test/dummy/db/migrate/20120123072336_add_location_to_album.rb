class AddLocationToAlbum < ActiveRecord::Migration
  def self.up
    add_column :balder_albums, :address, :string
    add_column :balder_albums, :longitude, :float
    add_column :balder_albums, :latitude, :float
  end

  def self.down
    remove_column :balder_albums, :latitude
    remove_column :balder_albums, :longitude
    remove_column :balder_albums, :address
  end
end

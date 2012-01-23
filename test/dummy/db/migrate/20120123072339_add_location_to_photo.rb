class AddLocationToPhoto < ActiveRecord::Migration
  def self.up
    add_column :balder_photos, :longitude, :float
    add_column :balder_photos, :latitude, :float
  end

  def self.down
    remove_column :balder_photos, :latitude
    remove_column :balder_photos, :longitude
  end
end

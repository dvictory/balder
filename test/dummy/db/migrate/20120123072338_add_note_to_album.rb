class AddNoteToAlbum < ActiveRecord::Migration
  def self.up
    add_column :balder_albums, :note, :text
  end

  def self.down
    remove_column :balder_albums, :note
  end
end

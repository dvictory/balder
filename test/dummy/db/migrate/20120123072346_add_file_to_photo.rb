class AddFileToPhoto < ActiveRecord::Migration
  def self.up
    add_column :balder_photos, :file, :string
  end

  def self.down
    remove_column :balder_photos, :file
  end
end

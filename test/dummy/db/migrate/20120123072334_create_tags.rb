class CreateTags < ActiveRecord::Migration
  def self.up
    create_table :balder_tags do |t|
      t.string :title, :length => 150, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :balder_tags
  end
end

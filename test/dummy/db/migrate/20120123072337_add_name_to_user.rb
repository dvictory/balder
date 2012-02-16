class AddNameToUser < ActiveRecord::Migration
  def self.up
    add_column :balder_users, :name, :string
  end

  def self.down
    remove_column :balder_users, :name
  end
end

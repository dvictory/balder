class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :balder_roles do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :balder_roles
  end
end
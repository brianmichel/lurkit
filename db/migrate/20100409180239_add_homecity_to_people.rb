class AddHomecityToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :homecity, :string
  end

  def self.down
    remove_column :people, :homecity
  end
end

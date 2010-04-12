class ChangeHomecityToCityId < ActiveRecord::Migration
  def self.up
    rename_column :people, :homecity, :city_id
  end

  def self.down
    rename_column :people, :city_id, :homecity
  end
end

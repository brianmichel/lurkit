class AddNameLatLongToCities < ActiveRecord::Migration
  def self.up
    add_column :cities, :latitude, :integer
    add_column :cities, :longitude, :integer
    add_column :cities, :name, :string
  end

  def self.down
    remove_column :cities, :latitude
    remove_column :cities, :longitude
    remove_column :cities, :name
  end
end

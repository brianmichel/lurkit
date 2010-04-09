class AddFirstnameLastnameToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :firstname, :string
    add_column :people, :lastname, :string
  end

  def self.down
    remove_column :people, :firstname
    remove_column :people, :lastname
  end
end

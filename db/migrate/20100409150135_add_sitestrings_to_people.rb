class AddSitestringsToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :twittername, :string
    add_column :people, :facebookname, :string
    add_column :people, :linkedinname, :string
    add_column :people, :myspacename, :string
    add_column :people, :tumblrname, :string
  end

  def self.down
    remove_column :people, :twittername
    remove_column :people, :facebookname
    remove_column :people, :linkedinname
    remove_column :people, :myspacename
    remove_column :people, :tumblrname
  end
end

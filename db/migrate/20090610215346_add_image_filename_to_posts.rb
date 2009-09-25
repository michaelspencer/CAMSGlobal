class AddImageFilenameToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :image_filename, :string
  end

  def self.down
    remove_column :posts, :image_filename
  end
end

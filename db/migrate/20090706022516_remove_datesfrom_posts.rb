class RemoveDatesfromPosts < ActiveRecord::Migration
  def self.up
    remove_column :posts, :dates
  end

  def self.down
    add_column :posts, :dates, :string
  end
end

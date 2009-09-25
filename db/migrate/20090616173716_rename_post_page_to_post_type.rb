class RenamePostPageToPostType < ActiveRecord::Migration
  def self.up
    change_table :posts do |t| 
      t.rename :page, :pagetype
    end
  end

  def self.down
    change_table :posts do |t| 
      t.rename :pagetype, :page
    end
  end
end

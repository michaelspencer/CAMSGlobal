class AddDatesToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :dates, :string
  end

  def self.down
    remove_column :posts, :dates
  end
end

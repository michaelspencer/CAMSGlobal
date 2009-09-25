class AddContinentToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :continent, :string
  end

  def self.down
    remove_column :posts, :continent
  end
end

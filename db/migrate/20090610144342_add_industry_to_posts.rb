class AddIndustryToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :industry, :string
  end

  def self.down
    remove_column :posts, :industry
  end
end

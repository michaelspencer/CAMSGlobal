class AddStartDateEndDatetoPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :start_date, :datetime
    add_column :posts, :end_date, :datetime
  end

  def self.down
    remove_column :posts, :start_date
    remove_column :posts, :end_date
  end
end

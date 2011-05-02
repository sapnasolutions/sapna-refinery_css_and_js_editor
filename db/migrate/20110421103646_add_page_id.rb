class AddPageId < ActiveRecord::Migration
  def self.up
    add_column :portfolios, :page_id, :integer
  end

  def self.down
    remove_column :portfolios, :page_id
  end
end

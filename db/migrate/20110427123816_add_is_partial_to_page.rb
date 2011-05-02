class AddIsPartialToPage < ActiveRecord::Migration
  def self.up
    add_column :pages, :is_partial, :boolean, :default => false
  end

  def self.down
    remove_column :pages, :is_partial
  end
end

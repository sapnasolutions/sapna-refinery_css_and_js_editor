class AddFooter < ActiveRecord::Migration
  def self.up
    add_column :pages, :is_footer, :boolean, :default => false
  end

  def self.down
    remove_column :pages, :is_footer
  end
end

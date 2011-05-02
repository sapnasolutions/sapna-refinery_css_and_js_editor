class CreatePagePartials < ActiveRecord::Migration
  def self.up
    create_table :page_partials do |t|
      t.integer :page_id
      t.integer :child_page_id
      t.timestamps
    end
  end

  def self.down
    drop_table :page_partials
  end
end

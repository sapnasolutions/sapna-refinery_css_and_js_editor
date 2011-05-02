class CreatePageFooters < ActiveRecord::Migration
  def self.up
    create_table :page_footers do |t|
      t.integer :page_id
      t.integer :footer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :page_footers
  end
end

class CreatePortfolios < ActiveRecord::Migration

  def self.up
    create_table :portfolios do |t|
      t.string :name
      t.string :url
      t.integer :photo_id
      t.text :description
      t.integer :position

      t.timestamps
    end

    add_index :portfolios, :id

    load(Rails.root.join('db', 'seeds', 'portfolios.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "portfolios"})

    Page.delete_all({:link_url => "/portfolios"})

    drop_table :portfolios
  end

end

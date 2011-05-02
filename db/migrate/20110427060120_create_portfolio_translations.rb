class CreatePortfolioTranslations < ActiveRecord::Migration
  def self.up
    create_table :portfolio_translations do |t|
      t.integer :portfolio_id
      t.string :locale
      t.string :name
      t.text :description

      t.timestamps
    end
    Portfolio.all.each do |p|
      PortfolioTranslation.create(:portfolio_id => p.id, :locale => 'en', :name => p.name, :description => p.description)
    end
    remove_column :portfolios, :name
    remove_column :portfolios, :description
  end

  def self.down
    add_column :portfolios, :name, :string
    add_column :portfolios, :description, :text
    PortfolioTranslation.all(:conditions => "locale=en").each do |p|
      Portfolio.find(p.portfolio_id).update_attributes(:name => p.name, :description => p.description)
    end
    drop_table :portfolio_translations
  end
end

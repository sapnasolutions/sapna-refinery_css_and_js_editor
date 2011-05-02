# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#Refinery seeds
Dir[Rails.root.join('db', 'seeds', '*.rb').to_s].each do |file|
  puts "Loading db/seeds/#{file.split(File::SEPARATOR).last}"
  load(file)
end
require 'csv'
CSV.foreach(File.open('db/seeds/members.csv')) do |row|
  Member.create(:facebook_path => row[0], :name => row[1], :description => row[2]) unless row[1]=='name'
end
YAML.load_file("#{Rails.root}/db/seeds/portfolio.yml").each  do |k, v|
  portfolio = Portfolio.create!(:url => v["url"], :page => Page.find_by_title(v["page_title"])[0])
  portfolio.translations << PortfolioTranslation.new(:locale => 'en', :name => v["en_name"], :description => v["en_description"])
  portfolio.translations << PortfolioTranslation.new(:locale => 'it', :name => v["it_name"], :description => v["it_description"])
  portfolio.translations << PortfolioTranslation.new(:locale => 'de', :name => v["de_name"], :description => v["de_description"])
end

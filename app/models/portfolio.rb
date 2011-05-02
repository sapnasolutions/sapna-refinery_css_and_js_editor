class Portfolio < ActiveRecord::Base

  belongs_to :page
  has_many :translations, :class_name => "PortfolioTranslation", :foreign_key => :portfolio_id, :dependent => :destroy
  accepts_nested_attributes_for :translations
  acts_as_indexed :fields => [:url]
  
  belongs_to :photo, :class_name => 'Image'
  
end

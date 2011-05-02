class PortfolioTranslation < ActiveRecord::Base
  belongs_to :portfolio
  acts_as_indexed :fields => [:name, :description]

  validates :name, :locale, :presence => true
  validates_uniqueness_of :name, :scope => [:locale]
end

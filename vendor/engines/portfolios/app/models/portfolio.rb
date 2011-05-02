class Portfolio < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :url, :description]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :photo, :class_name => 'Image'
end

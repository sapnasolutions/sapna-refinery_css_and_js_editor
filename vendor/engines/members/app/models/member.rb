class Member < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :description]

  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :photo, :class_name => 'Image'
end

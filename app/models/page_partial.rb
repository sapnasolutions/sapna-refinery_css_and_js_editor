class PagePartial < ActiveRecord::Base
  
  belongs_to :page
  belongs_to :sidebar, :class_name => "Page", :foreign_key => :child_page_id
end

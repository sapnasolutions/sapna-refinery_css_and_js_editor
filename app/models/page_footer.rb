class PageFooter < ActiveRecord::Base

belongs_to :page
belongs_to :footer, :class_name => "Page", :foreign_key => :footer_id
end

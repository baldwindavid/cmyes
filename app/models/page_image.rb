class PageImage < ActiveRecord::Base
  
  has_attached_file :image, 
      :url => "/uploads/:class/:id/:style_:basename.:extension",
      :path => ":rails_root/public/uploads/:class/:id/:style_:basename.:extension",
      :styles => {:custom => Proc.new {|i| "#{i.image_width}x#{i.image_height}>"}},
      :default_style => :custom

end

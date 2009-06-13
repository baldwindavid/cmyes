class PageAsset < ActiveRecord::Base
  
  has_attached_file :attachment, 
    :url => "/uploads/:class/:id/:basename.:extension",
    :path => ":rails_root/public/uploads/:class/:id/:basename.:extension"
    
end

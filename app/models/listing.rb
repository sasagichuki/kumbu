class Listing < ActiveRecord::Base
  has_attached_file :photo, :styles => { :small => "150x150>", :medium => "300x300>", :thumb => "100x100>"},
                    :url => "/assets/listings/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/listings/:id/:style/:basename.:extension"
end

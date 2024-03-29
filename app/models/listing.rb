class Listing < ActiveRecord::Base
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  has_attached_file :photo, :styles => { :small => "150x150>", :medium => "300x300#", :thumb => "100x100>", :large => "500x500>"},
                    :url => "/assets/listings/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/listings/:id/:style/:basename.:extension"
  # validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png']
  # validates_attachment_content_type :image, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'file type is not allowed (only jpeg/png/gif images)'

end

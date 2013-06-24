class Photo < ActiveRecord::Base
  attr_accessible :title, :photo
  
  has_attached_file :photo, :styles => { :main => "300x300#" }
end

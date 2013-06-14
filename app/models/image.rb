class Image < ActiveRecord::Base
  attr_accessible :description, :ip, :name, :tags, :user_agent, :file
  
  mount_uploader :file, ImageUploader

end
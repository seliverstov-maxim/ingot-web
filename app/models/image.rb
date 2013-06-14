class Image < ActiveRecord::Base
  attr_accessible :description, :ip, :name, :tags, :user_agent
  
end
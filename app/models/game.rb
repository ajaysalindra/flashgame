class Game < ActiveRecord::Base
	attr_accessible :title, :description, :image, :swf

	mount_uploader :image, ImageUploader
	mount_uploader :swf, SwfUploader
end


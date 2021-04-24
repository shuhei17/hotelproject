class Hotel < ApplicationRecord
	mount_uploader :picture, PictureUploader
	has_many :reviews
end

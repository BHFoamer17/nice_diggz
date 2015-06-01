class Photo < ActiveRecord::Base
  mount_uploader :photo_banner, ImageUploader
end

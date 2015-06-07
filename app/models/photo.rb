class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  mount_uploader :primary, PrimaryUploader

  belongs_to :project

end

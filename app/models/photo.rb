class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  # mount_uploader :primary, PrimaryUploader

  belongs_to :project

  has_many :categories
  has_many :descriptions, :through => :categories

  has_many :bags, as: :bagable
  has_many :tag_options, through: :bags

  attr_reader :description_token

  def description_token=(ids)
    self.description_ids = ids.split(",")
  end

end

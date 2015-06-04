class ServiceProvider < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :photo_face, PhotoFaceUploader
  mount_uploader :photo_banner, PhotoBannerUploader

  has_many :projects
  belongs_to :industry_type
  belongs_to :space_type


end

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

  geocoded_by :full_street_address

  def full_street_address
    [street_address_1, city, state, zip_code].compact.join(',')
  end

  after_validation :geocode


  # before_update :geocode, if: :has_address?

  # def full_street_address
  #   street = [street_address_1, street_address_2].compact.join(" ")
  #   all_but_zip = [street, city, state].compact.join(", ")
  #   [all_but_zip, zip_code].compact.join(" ")
  # end

  # def has_address?
  #   street_address_1.present? && zip_code.present?
  # end


end

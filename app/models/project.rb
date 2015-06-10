class Project < ActiveRecord::Base

  belongs_to :service_provider
  has_many :photos
  belongs_to :space_type


end

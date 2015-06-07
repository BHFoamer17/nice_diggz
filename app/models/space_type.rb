class SpaceType < ActiveRecord::Base

has_many :service_providers
has_many :projects

end

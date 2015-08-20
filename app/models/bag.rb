class Bag < ActiveRecord::Base

  belongs_to :bagable, polymorphic: true

end

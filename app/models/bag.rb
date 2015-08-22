class Bag < ActiveRecord::Base

  belongs_to :bagable, polymorphic: true
  belongs_to :tag_option

end

class Description < ActiveRecord::Base

  has_many :categories
  has_many :photos, :through => :categories


end

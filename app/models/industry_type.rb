class IndustryType < ActiveRecord::Base

  has_many :service_providers

  PHOTO_VIEW = ["Architect", "Contractor", "Interior Designer"]
  TABLE_VIEW = ["Attorney", "Brokerage", "Furniture Vendor", "Moving Company", "Office Equipment", "Telecommunications"]

  def displays_as_photo_view?
    PHOTO_VIEW.includes? self.name
  end

  def displays_as_table_view?
    TABLE_VIEW.includes? self.name
  end
end

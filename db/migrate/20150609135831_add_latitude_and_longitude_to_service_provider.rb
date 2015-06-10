class AddLatitudeAndLongitudeToServiceProvider < ActiveRecord::Migration
  def change
    add_column :service_providers, :latitude, :float
    add_column :service_providers, :longitude, :float
  end
end

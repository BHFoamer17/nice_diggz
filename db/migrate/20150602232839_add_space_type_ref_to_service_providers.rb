class AddSpaceTypeRefToServiceProviders < ActiveRecord::Migration
  def change
    add_reference :service_providers, :space_type, index: true, foreign_key: true
  end
end

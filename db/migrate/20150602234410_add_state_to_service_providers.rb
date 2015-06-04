class AddStateToServiceProviders < ActiveRecord::Migration
  def change
    add_column :service_providers, :state, :string
  end
end

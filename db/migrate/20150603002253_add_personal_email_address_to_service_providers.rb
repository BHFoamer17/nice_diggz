class AddPersonalEmailAddressToServiceProviders < ActiveRecord::Migration
  def change
    add_column :service_providers, :personal_email_address, :string
  end
end

class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :professional_association_id
      t.integer :service_provider_id

      t.timestamps

    end
  end
end

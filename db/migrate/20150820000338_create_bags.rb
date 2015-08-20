class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.string :name
      t.string :bagable_type
      t.integer :bagable_id
      t.integer :service_provider_id
      t.integer :photo_id

      t.timestamps

    end
  end
end

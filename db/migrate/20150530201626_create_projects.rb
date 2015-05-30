class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :service_provider_id
      t.string :name
      t.integer :space_type_id
      t.integer :category_id
      t.float :cost_amount
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :zip
      t.string :state
      t.text :description
      t.date :completed_on
      t.string :cost_amount_description

      t.timestamps

    end
  end
end

class CreateProfessionalAssociations < ActiveRecord::Migration
  def change
    create_table :professional_associations do |t|
      t.string :name

      t.timestamps

    end
  end
end

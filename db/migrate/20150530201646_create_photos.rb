class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.boolean :primary
      t.integer :project_id
      t.string :image

      t.timestamps

    end
  end
end

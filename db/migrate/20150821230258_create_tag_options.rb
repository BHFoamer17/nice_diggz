class CreateTagOptions < ActiveRecord::Migration
  def change
    create_table :tag_options do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

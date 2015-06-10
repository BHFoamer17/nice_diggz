class AddCostToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :cost, :string
  end
end

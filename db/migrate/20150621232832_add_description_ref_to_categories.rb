class AddDescriptionRefToCategories < ActiveRecord::Migration
  def change
    add_reference :categories, :description, index: true, foreign_key: true
  end
end

class AddDescriptionTokensToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :description_tokens, :string
  end
end

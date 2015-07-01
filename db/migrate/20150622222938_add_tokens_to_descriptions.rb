class AddTokensToDescriptions < ActiveRecord::Migration
  def change
    add_column :descriptions, :tokens, :string
  end
end

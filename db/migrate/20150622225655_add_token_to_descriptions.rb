class AddTokenToDescriptions < ActiveRecord::Migration
  def change
    add_column :descriptions, :token, :string
  end
end

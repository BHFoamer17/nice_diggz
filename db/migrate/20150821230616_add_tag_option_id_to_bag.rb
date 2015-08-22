class AddTagOptionIdToBag < ActiveRecord::Migration
  def change
    add_column :bags, :tag_option_id, :integer
  end
end

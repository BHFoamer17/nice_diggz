class AddCostToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :cost, :string
  end
end

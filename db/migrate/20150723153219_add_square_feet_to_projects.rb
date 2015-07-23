class AddSquareFeetToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :square_feet, :string
  end
end

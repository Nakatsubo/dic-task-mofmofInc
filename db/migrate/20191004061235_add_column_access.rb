class AddColumnAccess < ActiveRecord::Migration[5.0]
  def change
    add_column :accesses, :route1, :string
    add_column :accesses, :station1, :string
    add_column :accesses, :distance1, :integer
    add_column :accesses, :route2, :string
    add_column :accesses, :station2, :string
    add_column :accesses, :distance2, :integer
  end
end

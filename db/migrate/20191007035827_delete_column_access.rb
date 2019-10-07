class DeleteColumnAccess < ActiveRecord::Migration[5.0]
  def change
    rename_column :accesses, :route1, :route
    rename_column :accesses, :station1,:station
    rename_column :accesses, :distance1, :distance
    remove_column :accesses, :route2
    remove_column :accesses, :station2
    remove_column :accesses, :distance2
  end
end

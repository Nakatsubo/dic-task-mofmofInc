class RemoveColumnAccess < ActiveRecord::Migration[5.0]
  def change
    remove_column :accesses, :route, :string ,false
    remove_column :accesses, :station, :string ,false
    remove_column :accesses, :distance, :integer ,false
  end
end

class AddColumnSecondAccess < ActiveRecord::Migration[5.0]
  def change
    def up
      add_column :accesses, :route1, :string ,false
      add_column :accesses, :station1, :string ,false
      add_column :accesses, :distance1, :integer ,false
      add_column :accesses, :route2, :string ,false
      add_column :accesses, :station2, :string ,false
      add_column :accesses, :distance2, :integer ,false
    end
    def down
      remove_column :accesses, :route, :string ,false
      remove_column :accesses, :station, :string ,false
      remove_column :accesses, :distance, :integer ,false
    end
  end
end

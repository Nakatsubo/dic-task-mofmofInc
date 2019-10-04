class AddColumnNotnullAccess < ActiveRecord::Migration[5.0]
  def change
    change_column_null :accesses, :route1, false
    change_column_null :accesses, :station1, false
    change_column_null :accesses, :distance1, false
    change_column_null :accesses, :route2, false
    change_column_null :accesses, :station2, false
    change_column_null :accesses, :distance2, false
  end
end
